// feather ignore all
#macro __TWEENY_VERSION "1.1.0"

enum __TWEENY_TYPE {
    VALUE,
    VARIABLE,
    COLOR,
    ANGLE,
    STRING,
    METHOD,
    INTERVAL,
    CALLBACK,
}

enum TWEENY_TRACE {
    FORCED      = -1,
    DISABLED    = 0,
    CRITICAL    = 1,
    VERBOSE     = 2,
}

#macro TWEENY_CHANNEL_IN		"In"
#macro TWEENY_CHANNEL_OUT		"Out"
#macro TWEENY_CHANNEL_IN_OUT	"InOut"
#macro TWEENY_CHANNEL_OUT_IN	"OutIn"

#macro TWEENY_EASE_STEP			__TweenyEaseStep
#macro TWEENY_EASE_LINEAR		__TweenyEaseLinear
#macro TWEENY_EASE_SINE			__TweenyEaseSine
#macro TWEENY_EASE_QUAD			__TweenyEaseQuad
#macro TWEENY_EASE_CUBIC		__TweenyEaseCubic
#macro TWEENY_EASE_QUART		__TweenyEaseQuart
#macro TWEENY_EASE_QUINT		__TweenyEaseQuint
#macro TWEENY_EASE_EXPO			__TweenyEaseExpo
#macro TWEENY_EASE_CIRC			__TweenyEaseCirc
#macro TWEENY_EASE_BACK			__TweenyEaseBack
#macro TWEENY_EASE_BOUNCE		__TweenyEaseBounce
#macro TWEENY_EASE_ELASTIC		__TweenyEaseElastic
#macro TWEENY_EASE_SPRING		__TweenyEaseSpring
