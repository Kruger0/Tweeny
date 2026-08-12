// feather ignore all
function TweenyEaseLinearIn(t) {
    gml_pragma("forceinline");
    return t;
}
function TweenyEaseLinearOut(t) {
    gml_pragma("forceinline");
    return t;
}
function TweenyEaseLinearInOut(t) {
    gml_pragma("forceinline");
    return t;
}
function TweenyEaseLinearOutIn(t) {
    gml_pragma("forceinline");
    return t;
}

function TweenyEaseStepIn(t) {
    gml_pragma("forceinline");
    if (t < 1) return 0;
    return 1;
}
function TweenyEaseStepOut(t) {
    gml_pragma("forceinline");
    return 1;
}
function TweenyEaseStepInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0;
    return 1;
}
function TweenyEaseStepOutIn(t) {
    gml_pragma("forceinline");
    if (t < 1) return 0.5;
    return 1;
}

function TweenyEaseSineIn(t) {
    gml_pragma("forceinline");
    return 1 - cos((t * pi) / 2);
}
function TweenyEaseSineOut(t) {
    gml_pragma("forceinline");
    return sin((t * pi) / 2);
}
function TweenyEaseSineInOut(t) {
    gml_pragma("forceinline");
    return -(cos(pi * t) - 1) / 2;
}
function TweenyEaseSineOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseSineOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseSineIn(2 * t - 1);
}

function TweenyEaseQuadIn(t) {
    gml_pragma("forceinline");
    return t * t;
}
function TweenyEaseQuadOut(t) {
    gml_pragma("forceinline");
    return 1 - power(1 - t, 2);
}
function TweenyEaseQuadInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 2 * t * t;
    return 1 - power(-2 * t + 2, 2) / 2;
}
function TweenyEaseQuadOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseQuadOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseQuadIn(2 * t - 1);
}

function TweenyEaseCubicIn(t) {
    gml_pragma("forceinline");
    return t * t * t;
}
function TweenyEaseCubicOut(t) {
    gml_pragma("forceinline");
    return 1 - power(1 - t, 3);
}
function TweenyEaseCubicInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 4 * t * t * t;
    return 1 - power(-2 * t + 2, 3) / 2;
}
function TweenyEaseCubicOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseCubicOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseCubicIn(2 * t - 1);
}

function TweenyEaseQuartIn(t) {
    gml_pragma("forceinline");
    return t * t * t * t;
}
function TweenyEaseQuartOut(t) {
    gml_pragma("forceinline");
    return 1 - power(1 - t, 4);
}
function TweenyEaseQuartInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 8 * t * t * t * t;
    return 1 - power(-2 * t + 2, 4) / 2;
}
function TweenyEaseQuartOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseQuartOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseQuartIn(2 * t - 1);
}

function TweenyEaseQuintIn(t) {
    gml_pragma("forceinline");
    return t * t * t * t * t;
}
function TweenyEaseQuintOut(t) {
    gml_pragma("forceinline");
    return 1 - power(1 - t, 5);
}
function TweenyEaseQuintInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 16 * t * t * t * t * t;
    return 1 - power(-2 * t + 2, 5) / 2;
}
function TweenyEaseQuintOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseQuintOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseQuintIn(2 * t - 1);
}

function TweenyEaseExpoIn(t) {
    gml_pragma("forceinline");
    if (t == 0) return 0;
    return power(2, 10 * t - 10);
}
function TweenyEaseExpoOut(t) {
    gml_pragma("forceinline");
    if (t == 1) return 1;
    return 1 - power(2, -10 * t);
}
function TweenyEaseExpoInOut(t) {
    gml_pragma("forceinline");
    if (t == 0) return 0;
    if (t == 1) return 1;
    if (t < 0.5) return power(2, 20 * t - 10) / 2;
    return (2 - power(2, -20 * t + 10)) / 2;
}
function TweenyEaseExpoOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseExpoOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseExpoIn(2 * t - 1);
}

function TweenyEaseCircIn(t) {
    gml_pragma("forceinline");
    return 1 - sqrt(1 - t * t);
}
function TweenyEaseCircOut(t) {
    gml_pragma("forceinline");
    return sqrt(1 - power(t - 1, 2));
}
function TweenyEaseCircInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return (1 - sqrt(1 - power(2 * t, 2))) / 2;
    return (sqrt(1 - power(-2 * t + 2, 2)) + 1) / 2;
}
function TweenyEaseCircOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseCircOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseCircIn(2 * t - 1);
}

function TweenyEaseBackIn(t) {
    gml_pragma("forceinline");
    return __TWEENY_C3 * t * t * t - __TWEENY_C1 * t * t;
}
function TweenyEaseBackOut(t) {
    gml_pragma("forceinline");
    return 1 + __TWEENY_C3 * power(t - 1, 3) + __TWEENY_C1 * power(t - 1, 2);
}
function TweenyEaseBackInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return (power(2 * t, 2) * ((__TWEENY_C2 + 1) * 2 * t - __TWEENY_C2)) / 2;
    return (power(2 * t - 2, 2) * ((__TWEENY_C2 + 1) * (t * 2 - 2) + __TWEENY_C2) + 2) / 2;
}
function TweenyEaseBackOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseBackOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseBackIn(2 * t - 1);
}

function TweenyEaseSpringIn(t) {
    gml_pragma("forceinline");
    return 1 - TweenyEaseSpringOut(1 - t);
}
function TweenyEaseSpringOut(t) {
    gml_pragma("forceinline");
    var _s = 1 - t;
    return (sin(t * pi * (0.2 + 2.5 * t * t * t)) * power(_s, 2.2) + t) * (1 + 1.2 * _s);
}
function TweenyEaseSpringInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseSpringIn(2 * t);
    return 0.5 + 0.5 * TweenyEaseSpringOut(2 * t - 1);
}
function TweenyEaseSpringOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseSpringOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseSpringIn(2 * t - 1);
}

function TweenyEaseElasticIn(t) {
    gml_pragma("forceinline");
    if (t == 0) return 0;
    if (t == 1) return 1;
    return -power(2, 10 * t - 10) * sin((t * 10 - 10.75) * __TWEENY_C4);
}
function TweenyEaseElasticOut(t) {
    gml_pragma("forceinline");
    if (t == 0) return 0;
    if (t == 1) return 1;
    return power(2, -10 * t) * sin((t * 10 - 0.75) * __TWEENY_C4) + 1;
}
function TweenyEaseElasticInOut(t) {
    gml_pragma("forceinline");
    if (t == 0) return 0;
    if (t == 1) return 1;
    if (t < 0.5) return -(power(2, 20 * t - 10) * sin((20 * t - 11.125) * __TWEENY_C5)) / 2;
    return (power(2, -20 * t + 10) * sin((20 * t - 11.125) * __TWEENY_C5)) / 2 + 1;
}
function TweenyEaseElasticOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseElasticOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseElasticIn(2 * t - 1);
}

function TweenyEaseBounceIn(t) {
    gml_pragma("forceinline");
    return 1 - TweenyEaseBounceOut(1 - t);
}
function TweenyEaseBounceOut(t) {
    gml_pragma("forceinline");
    var _n1 = 7.5625;
    var _d1 = 2.75;
    if (t < 1 / _d1) {
        return _n1 * t * t;
    } else if (t < 2 / _d1) {
        t -= 1.5 / _d1;
        return _n1 * t * t + 0.75;
    } else if (t < 2.5 / _d1) {
        t -= 2.25 / _d1;
        return _n1 * t * t + 0.9375;
    } else {
        t -= 2.625 / _d1;
        return _n1 * t * t + 0.984375;
    }
}
function TweenyEaseBounceInOut(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return (1 - TweenyEaseBounceOut(1 - 2 * t)) / 2;
    return (1 + TweenyEaseBounceOut(2 * t - 1)) / 2;
}
function TweenyEaseBounceOutIn(t) {
    gml_pragma("forceinline");
    if (t < 0.5) return 0.5 * TweenyEaseBounceOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseBounceIn(2 * t - 1);
}
