// feather ignore all
/// @ignore
function __TweenyValue() : __TweenyStep() constructor {
    __type = __TWEEN_TYPE.VALUE;
    
    static SetEase = function(animCurve, animChannel = 0) {
        __ease = animcurve_get_channel(animCurve, animChannel);
        return self;
    }
    static SetDelay = function(value) {
        __delay = value;
        __remaining = value;
        return self;
    }
    static SetInterpolate = function(func) {
        __lerp = method(self, func);
        return self;
    }
    static Relative = function() {
        __relative = true;
        return self;
    }
    static From = function(value) {
        __from = value;
        return self;
    }
    static FromCurrent = function() {
        __from ??= ((is_struct(__instance) || instance_exists(__instance ?? noone)) ? (__instance[$ __variable] ?? 0) : 0);
        return self;
    }
}

/// @ignore
function __TweenyVariable() : __TweenyValue() constructor {
    __type = __TWEEN_TYPE.VARIABLE;
    __lerp = __TweenyLerpValue;
}

/// @ignore
function __TweenyColor() : __TweenyValue() constructor {
    __type = __TWEEN_TYPE.COLOR;
    __lerp = __TweenyLerpColor;
}

/// @ignore
function __TweenyAngle() : __TweenyValue() constructor {
    __type = __TWEEN_TYPE.ANGLE;
    __lerp = __TweenyLerpAngle;
}

/// @ignore
function __TweenyString() : __TweenyValue() constructor {
    __type = __TWEEN_TYPE.STRING;
    __lerp = __TweenyLerpString;
}

/// @ignore
function __TweenyMethod() : __TweenyValue() constructor {
    __type = __TWEEN_TYPE.METHOD;
    __lerp = __TweenyLerpValue;
}
