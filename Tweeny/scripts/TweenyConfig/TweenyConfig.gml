// feather ignore all

// Controls the verbosity of the console output.
// DISABLED:    No logs will be displayed.
// CRITICAL:    Only errors and warnings will be displayed.
// VERBOSE:     All logs will be displayed.
// Default:     TWEENY_TRACE.CRITICAL
#macro TWEENY_TRACE_LEVEL   TWEENY_TRACE.CRITICAL

// If tweens that dont have any usage at the moment of definition should be clenaed from memory.
#macro TWEENY_CLEAR_EMPTY   true

// The default ease type used by tween elements.
#macro TWEENY_DEFAULT_EASE  TweenyEaseLinearOut

// If the internal system data should be exposed as a 'global.__Tweeny'.
#macro TWEENT_EXPOSE_GLOBAL false