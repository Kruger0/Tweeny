// feather ignore all
/// @desc Sets the global time scale used by tweens.
/// @param {Real} scale The time scale factor.
function TweenySetTimescale(scale) {
    static __data = __TweenyInit();
    __data.timescale = scale;
}

/// @desc Gets the global time scale used by tweens.
/// @return {Real} The time scale factor.
function TweenyGetTimescale(scale) {
    static __data = __TweenyInit();
    return __data.timescale;
}

/// @desc Returns the tween element matching the given unique id.
/// @param {Id} uid The unique id assigned when the tween was created.
/// @return {Struct.Tweeny} The matching tween element, or undefined if none is found.
function TweenyGet(uid) {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        var _tween = _tweens[i];
        if (_tween.__uid == uid) {
            return _tween;
        };
    }
}

/// @desc Returns an array of all active tween elements.
/// @return {Array} The array of tween elements.
function TweenyGetAll() {
    static __data = __TweenyInit();
    return __data.tweens;
}

/// @desc Pauses all active tween elements.
function TweenyPauseAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Pause();
    }
}

/// @desc Resumes all paused tween elements.
function TweenyResumeAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Play();
    }
}

/// @desc Stops all tween elements, resetting each to its initial step.
function TweenyStopAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Stop();
    }
}

/// @desc Finishes all tween elements, jumping to their end values and firing their completion callbacks.
function TweenyFinishAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Finish();
    }
}

/// @desc Destroys all tween elements, removing them from memory without firing completion callbacks.
function TweenyDestroyAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Destroy();
    }
}
