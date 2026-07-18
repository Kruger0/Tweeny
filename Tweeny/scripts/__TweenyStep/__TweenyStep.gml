// feather ignore all
/// @ignore
function __TweenyStep() constructor {
    __parallel = false;
    __done = false;
    __delay = 0;
    __type = undefined;
    __remaining = 0;
    __variable = "";
    __target = 0;
    __lerp = __TweenyLerpValue;
    __elapsed = 0;
    __duration = 0;
    __ease = undefined;
    __from = undefined;
    __fromExplicit = false;
    __instance = undefined;
    __relative = false;
    __func = undefined;
}

/// @ignore
function __TweenyInterval() : __TweenyStep() constructor {
    __type = __TWEENY_TYPE.INTERVAL;
}

/// @ignore
function __TweenyCallback() : __TweenyStep() constructor {
    __type = __TWEENY_TYPE.CALLBACK;
    __args = undefined;
}
