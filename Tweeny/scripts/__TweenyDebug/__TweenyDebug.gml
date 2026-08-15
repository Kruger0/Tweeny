// feather ignore all
/// @ignore
function __TweenyDebug() {
    static __ = new (function() constructor {
        static __data = __TweenyInit();
        static __debug = {
            count: 0,
        }
        
        __Refresh = function() {
            with (__debug) {
                count = array_length(other.__data.tweens);
            }
        }
        
        var _isDbgOpen = is_debug_overlay_open();
        
        __view = dbg_view($"Tweeny v{__TWEENY_VERSION}", false, 256, 32, 420, 300);
        
        dbg_section("General")
        dbg_slider(ref_create(__data, "timescale"), 0, 5, "Time Scale");
        dbg_watch(ref_create(__debug, "count"), "Count");
        
        dbg_section("Playback", true);
        dbg_button("Pause", TweenyPauseAll);
        dbg_same_line();
        dbg_button("Resume", TweenyResumeAll);
        
        dbg_button("Stop", TweenyStopAll);
        dbg_same_line();
        dbg_button("Finish", TweenyFinishAll);
        dbg_button("Destroy", TweenyDestroyAll);
        
        show_debug_overlay(_isDbgOpen);
        
        __Refresh();
        call_later(1, time_source_units_frames, __Refresh, true);
    })();
}
