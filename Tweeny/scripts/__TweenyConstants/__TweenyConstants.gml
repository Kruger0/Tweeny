// feather ignore all
#macro __TWEENY_VERSION "2.0.1"

#macro __TWEENY_C1  1.70158
#macro __TWEENY_C2  2.5949095
#macro __TWEENY_C3  2.70158
#macro __TWEENY_C4  2.0943951
#macro __TWEENY_C5  1.3962634

enum __TWEENY_TYPE {
    VALUE,
    VARIABLE,
    COLOR,
    ANGLE,
    STRING,
    METHOD,
    INTERVAL,
    CALLBACK,
    AWAIT,
    COUNT,
}

enum TWEENY_TRACE {
    FORCED      = -1,
    DISABLED    = 0,
    CRITICAL    = 1,
    VERBOSE     = 2,
}
