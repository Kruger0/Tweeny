// feather ignore all
/// @ignore
function __TweenyTrace(msg, level){
    if (level <= TWEENY_TRACE_LEVEL) {
        var _string = "[Localize]" + (level == TWEENY_TRACE.CRITICAL ? " \u26A0 " : " ") + msg;
        if (argument_count > 2) {
            var _count = argument_count - 2;
            var _args = array_create(_count);
            for (var i = 0; i < _count; i++) {
                _args[i] = argument[i + 2];
            }
            _string = string_ext(_string, _args);
        }
        show_debug_message(_string);
    }
}
