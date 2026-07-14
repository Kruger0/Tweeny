// feather ignore all
#macro __TWEEN_VERSION "1.0.0"

enum __TWEEN_TYPE {
    VALUE,
    VARIABLE,
    COLOR,
    ANGLE,
    STRING,
    METHOD,
    INTERVAL,
    CALLBACK,
}

#macro TWEEN_CHANNEL_IN     "In"
#macro TWEEN_CHANNEL_OUT    "Out"
#macro TWEEN_CHANNEL_IN_OUT "InOut"
#macro TWEEN_CHANNEL_OUT_IN "OutIn"

#macro TWEEN_EASE_LINEAR    __TweenyEaseLinear
#macro TWEEN_EASE_SINE      __TweenyEaseSine
#macro TWEEN_EASE_QUAD      __TweenyEaseQuad
#macro TWEEN_EASE_CUBIC     __TweenyEaseCubic
#macro TWEEN_EASE_QUART     __TweenyEaseQuart
#macro TWEEN_EASE_QUINT     __TweenyEaseQuint
#macro TWEEN_EASE_EXPO      __TweenyEaseExpo
#macro TWEEN_EASE_CIRC      __TweenyEaseCirc
#macro TWEEN_EASE_BACK      __TweenyEaseBack
#macro TWEEN_EASE_BOUNCE    __TweenyEaseBounce
#macro TWEEN_EASE_ELASTIC   __TweenyEaseElastic
#macro TWEEN_EASE_SPRING    __TweenyEaseSpring
