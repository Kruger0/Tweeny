// feather ignore all
/// @desc Creates a tween element.
/// @return {Struct.Tweeny} The tween element.
function Tweeny() constructor {
    
    #region Private
    static __data = __TweenyInit();
    __source = undefined;
    __steps = [];
    __current = 0;
    __speedScale  = 1.0;
    __ease = undefined;
    __loopsTotal = 1;
    __loopsLeft = __loopsTotal;
    __paused = false;
    __parallel = false;
    __dead = false;
    __elapsed = 0;
    __totalElapsed = 0;
    __onFinishedCb = [];
    __onLoopFinishedCb = [];
    __onStepFinishedCb = [];
    array_push(__data.tweens, self);
    
    static __Build = function(type, instance, variable, target, duration) {
        var _step = new type();
        _step.__instance = instance;
        _step.__variable = variable;
        _step.__target = target;
        _step.__duration = duration;
        return _step;
    }
    static __Push = function(step) {
        if (__parallel) {
            array_push(array_last(__steps), step);
        } else {
            array_push(__steps, step);
        }
        return step;
    }
    static __Update = function() {
        if (__dead) return;
        if (TWEENY_CLEAR_EMPTY && array_length(__steps) <= 0) { __dead = true; return; }
        if (!is_undefined(__source)) {
            var _alive = (instanceof(__source) == "weakref") ? weak_ref_alive(__source) : instance_exists(__source);
            if (!_alive) { __dead = true; return; }
        }
        if (!__paused) __Process();
    }
    static __Process = function() {
        if (array_length(__steps) == 0) return;
        if (__current >= array_length(__steps)) return;
        var _slot = __steps[__current];
        var _delta = (__data.timeScale / game_get_speed(gamespeed_fps)) * __speedScale ;
        __elapsed += _delta;
        __totalElapsed += _delta;
        if (is_array(_slot)) {
            // Parallel
            var _done = true;
            for (var i = 0; i < array_length(_slot); i++) {
                var _step = _slot[i];
                if (!_step.__done) {
                    __Execute(_step, _delta);
                    if (!_step.__done) _done = false;
                }
            }
            if (_done) {
                __Trigger(__onStepFinishedCb);
                __Advance();
            }
        } else {
            // Sequential
            var _wasDone = _slot.__done;
            __Execute(_slot, _delta);
            if (!_wasDone && _slot.__done) {
                __Trigger(__onStepFinishedCb);
                __Advance();
            }
        }
    }
    static __Execute = function(step, delta) {
        static __data = __TweenyInit();
        if (step.__remaining > 0) {
            step.__remaining -= delta;
            return;
        }
        var _ease = step.__ease ?? __ease ?? __data.defaultEase;
        with (step) {
            __from ??= struct_get(__instance ?? {}, __variable) ?? 0;
            __elapsed += delta;
            var _t = clamp(__elapsed / __duration, 0, 1);
            var _to = (__relative ? __from + __target : __target);
            var _amt = is_callable(_ease) ? _ease(_t) : animcurve_channel_evaluate(_ease, _t);
            var _result = __lerp(__from, _to, _amt);
            switch (__type) {
                case __TWEENY_TYPE.VARIABLE:
                case __TWEENY_TYPE.COLOR:
                case __TWEENY_TYPE.ANGLE:
                case __TWEENY_TYPE.STRING:{
                    __instance[$ __variable] = _result;
                } break;
            
                case __TWEENY_TYPE.INTERVAL: {
                    // Wait
                } break;
            
                case __TWEENY_TYPE.CALLBACK: {
                    method_call(__func, __args);
                    __done = true;
                } break;
                
                case __TWEENY_TYPE.METHOD: {
                    method_call(__func, [_result]);
                } break;
            }
            if (__elapsed >= __duration) __done = true;
        }
    }
    static __Advance = function() {
        __current++;
        if (__current >= array_length(__steps)) {
            __Trigger(__onLoopFinishedCb);
            if (__loopsTotal == 0) {
                __Reset();
            } else {
                __loopsLeft--;
                if (__loopsLeft <= 0) {
                    __dead = true;
                    __Trigger(__onFinishedCb);
                } else {
                    __Reset();
                }
            }
        }
    }
    static __Reset = function() {
        __current = 0;
        __elapsed = 0;
        for (var i = 0; i < array_length(__steps); i++) {
            var _slot = __steps[i];
            if (is_array(_slot)) {
                for (var j = 0; j < array_length(_slot); j++) {
                    var _step = _slot[j];
                    _step.__elapsed = 0;
                    _step.__done = false;
                    _step.__remaining = _step.__delay;
                    if (!_step.__fromExplicit) _step.__from = undefined;
                }
            } else {
                _slot.__elapsed = 0;
                _slot.__done = false;
                _slot.__remaining = _slot.__delay;
                if (!_slot.__fromExplicit) _slot.__from = undefined;
            }
        }
    }
    static __Skip = function(step) {
        with (step) {
            if (__type == __TWEENY_TYPE.INTERVAL || __type == __TWEENY_TYPE.CALLBACK) {
                __done = true;
                return;
            }
            __from ??= struct_get(__instance ?? {}, __variable) ?? 0;
            var _to = (__relative ? __from + __target : __target);
            __instance[$ __variable] = _to;
            __done = true;
        }
    }
    static __Trigger = function(array) {
        for (var i = 0; i < array_length(array); i++) {
            method_call(array[i])
        }
    }
    #endregion
    
    /// @desc Tweens a numeric variable on an instance or struct.
    /// @param {Id.Instance|Struct} instance The instance or struct to target.
    /// @param {String} variable The variable name to tween.
    /// @param {Real} target The target value.
    /// @param {Real} duration The duration in seconds.
    /// @return {Struct.Step} The step element.
    static Variable = function(instance, variable, target, duration) {
        var _step = __Build(__TweenyVariable, instance, variable, target, duration)
        return __Push(_step);
    }
    /// @desc Tweens a color variable on an instance or struct.
    /// @param {Id.Instance|Struct} instance The instance or struct to target.
    /// @param {String} variable The variable name to tween.
    /// @param {Real} target The target color.
    /// @param {Real} duration The duration in seconds.
    /// @return {Struct.Step} The step element.
    static Color = function(instance, variable, target, duration) {
        var _step = __Build(__TweenyColor, instance, variable, target, duration)
        return __Push(_step);
    }
    /// @desc Tweens an angle variable on an instance or struct, interpolating correctly across 360°.
    /// @param {Id.Instance|Struct} instance The instance or struct to target.
    /// @param {String} variable The variable name to tween.
    /// @param {Real} target The target angle in degrees.
    /// @param {Real} duration The duration in seconds.
    /// @return {Struct.Step} The step element.
    static Angle = function(instance, variable, target, duration) {
        var _step = __Build(__TweenyAngle, instance, variable, target, duration)
        return __Push(_step);
    }
    /// @desc Tweens a string variable by interpolating each character's ASCII value, morphing from one string to another.
    /// @param {Id.Instance|Struct} instance The instance or struct to target.
    /// @param {String} variable The variable name to tween.
    /// @param {String} target The target string.
    /// @param {Real} duration The duration in seconds.
    /// @return {Struct.Step} The step element.
    static String = function(instance, variable, target, duration) {
        var _step = __Build(__TweenyString, instance, variable, target, duration)
        return __Push(_step);
    }
    /// @desc Tweens a value and passes it to a method each frame.
    /// @param {Function} func The method to call with the tweened value.
    /// @param {Real} from The starting value.
    /// @param {Real} to The target value.
    /// @param {Real} duration The duration in seconds.
    /// @return {Struct.Step} The step element.
    static Method = function(func, from, to, duration) {
        var _step = new __TweenyMethod();
        _step.__func = func;
        _step.__from = from;
        _step.__target = to;
        _step.__duration = duration;
        return __Push(_step);
    }
    /// @desc Adds a pause between tween steps.
    /// @param {Real} duration The duration in seconds.
    /// @return {Struct.Step} The step element.
    static Interval = function(duration) {
        var _step = new __TweenyInterval();
        _step.__duration = duration;
        return __Push(_step);
    }
    /// @desc Adds a callback to be called when this step is reached.
    /// @param {Function} func The function to call.
    /// @param {Array|Any} args Arguments to pass to the function. A non-array value is wrapped automatically.
    /// @return {Struct.Step} The step element.
    static Callback = function(func, args = []) {
        var _step = new __TweenyCallback();
        _step.__func = func;
        _step.__args = (is_array(args) ? args : [args]);
        return __Push(_step);
    }
    /// @desc Begins a parallel block. Steps added after this will run simultaneously until ParallelEnd() is called.
    /// @return {Struct.Tweeny} The tween element.
    static ParallelBegin = function() {
        if (__parallel) __TweenyError("ParallelBegin() called without closing previous ParallelEnd()", true);
        __parallel = true;
        array_push(__steps, []);
        return self;
    }
    /// @desc Ends a parallel block. Steps added after this will run sequentially again.
    /// @return {Struct.Tweeny} The tween element.
    static ParallelEnd = function() {
        if (!__parallel) __TweenyError("ParallelEnd() called without a matching ParallelBegin()", true);
        __parallel = false;
        return self;
    }
    /// @desc Sets the playback speed scale of the tween.
    /// @param {Real} scale The speed multiplier.
    /// @return {Struct.Tweeny} The tween element.
    static SetSpeedScale = function(scale) {
        __speedScale  = scale;
        return self;
    }
    /// @desc Sets the number of times the tween loops.
    /// @param {Real} loops The number of loops. Defaults to 0 (infinite).
    /// @return {Struct.Tweeny} The tween element.
    static SetLoops = function(loops = 0) {
        __loopsTotal = max(0, loops);
        __loopsLeft = __loopsTotal;
        return self;
    }
    /// @desc Sets the easing function using an Animation Curve asset.
    /// @param {Asset.GMAnimCurve} curve The animation curve asset.
    /// @param {Real} channel The channel index to use. Defaults to 0.
    /// @return {Struct.Tweeny} The tween element.
    static SetEaseCurve = function(curve, channel = 0) {
        __ease = animcurve_get_channel(curve, channel);
        return self;
    }
    /// @desc Sets the easing function.
    /// @param {Function} func The easing function..
    /// @return {Struct.Tweeny} The tween element.
    static SetEaseFunc = function(func) {
        __ease = func;
        return self;
    }
    /// @desc Returns the total loop count of the tween element.
    static GetLoops = function() {
        return __loopsTotal;
    }
    /// @desc Returns the remaining loop count of the tween element.
    static GetLoopsLeft = function() {
        return __loopsLeft;
    }
    /// @desc Returns the elapsed time of the current cycle
    static GetElapsedTime = function() {
        return __elapsed;
    }
    /// @desc Returns the total elapsed time since the tween element
    static GetTotalElapsedTime = function() {
        return __totalElapsed;
    }
    /// @desc Checks if the tween element is running
    static IsRunning = function() {
        return !__paused && !__dead;
    }
    /// @desc Checks if the tween element is paused
    static IsPaused = function() {
        return __paused;
    }
    /// @desc Checks if the tween element is alive and being processed.
    static IsValid = function() {
        return !__dead && array_contains(__data.tweens, self);
    }
    /// @desc Sets a callback function to be executed at the end of the last step.
    static OnFinished = function(callback) {
        array_push(__onFinishedCb, callback);
        return self;
    }
    /// @desc Sets a callback function to be executed at the end of a loop.
    static OnLoopFinished = function(callback) {
        array_push(__onLoopFinishedCb, callback); // TODO check if this is being called at the last loop
        return self;
    }
    /// @desc Sets a callback function to be executed at the end of every step.
    static OnStepFinished = function(callback) {
        array_push(__onStepFinishedCb, callback);
        return self;
    }
    /// @desc Binds the tween lifetime to an instance or struct. The tween will automatically stop if the bound target ceases to exist.
    /// @param {Id.Instance|Struct} source The instance or struct to bind to.
    /// @return {Struct.Tweeny} The tween element.
    static Bind = function(source) {
        __source = is_struct(source) ? weak_ref_create(source) : source;
        return self;
    }
    /// @desc Skips the current step.
    static Skip = function() {
        while (__current < array_length(__steps)) {
            var _slot = __steps[__current];
            if (is_array(_slot)) {
                for (var i = 0; i < array_length(_slot); i++) {
                    __Skip(_slot[i]);
                }
            } else {
                __Skip(_slot);
            }
            __current++;
        }
        __dead = true;
    }
    /// @desc Pauses the tween element animation.
    static Pause = function() {
        __paused = true;
        return self;
    }
    /// @desc Resumes the tween element animation.
    static Play = function() {
        __paused = false;
        return self;
    }
    /// @desc Stops the tween element animation, reseting it to the initial step.
    static Stop = function() {
        __paused = true;
        __totalElapsed = 0;
        __Reset();
        return self;
    }
    /// @desc Clear the tween element from memory.
    static Destroy = function() {
        __paused = true;
        __dead = true;
    }
}
