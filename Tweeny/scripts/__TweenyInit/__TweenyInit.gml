// feather ignore all
/// @ignore
function __TweenyInit() {
    static __data = undefined;
    if (is_undefined(__data)) {
        // Define
        __data = {
            tweens: [],
            timescale: 1.0,
            ease: TWEENY_DEFAULT_EASE,
        }
        
        // Update
        call_later(1, time_source_units_frames, function() {
            static __data = __TweenyInit();
            var _tweens = __data.tweens;
            for (var i = array_length(_tweens)-1; i >= 0; i--) {
                var _tween = _tweens[i];
                if (_tween.__dead) {
                    array_delete(_tweens, i, 1);
                    continue;
                }
                _tween.__Update();
            }
        }, true);
        
        // Expose
        if (TWEENT_EXPOSE_GLOBAL) global.__Tweeny = __data;
        
        // Debug
        __TweenyDebug();
    }
    return __data;
}
