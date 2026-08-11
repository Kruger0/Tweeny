// feather ignore all

function TweenyEaseLinearIn(t) {
    return t;
}
function TweenyEaseLinearOut(t) {
    return t;
}
function TweenyEaseLinearInOut(t) {
    return t;
}
function TweenyEaseLinearOutIn(t) {
    return t;
}

function TweenyEaseStepIn(t) {
    if (t < 1) return 0;
    return 1;
}
function TweenyEaseStepOut(t) {
    return 1;
}
function TweenyEaseStepInOut(t) {
    if (t < 0.5) return 0;
    return 1;
}
function TweenyEaseStepOutIn(t) {
    if (t < 1) return 0.5;
    return 1;
}

function TweenyEaseSineIn(t) {
    return 1 - cos((t * pi) / 2);
}
function TweenyEaseSineOut(t) {
    return sin((t * pi) / 2);
}
function TweenyEaseSineInOut(t) {
    return -(cos(pi * t) - 1) / 2;
}
function TweenyEaseSineOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseSineOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseSineIn(2 * t - 1);
}

function TweenyEaseQuadIn(t) {
    return t * t;
}
function TweenyEaseQuadOut(t) {
    return 1 - power(1 - t, 2);
}
function TweenyEaseQuadInOut(t) {
    if (t < 0.5) return 2 * t * t;
    return 1 - power(-2 * t + 2, 2) / 2;
}
function TweenyEaseQuadOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseQuadOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseQuadIn(2 * t - 1);
}

function TweenyEaseCubicIn(t) {
    return t * t * t;
}
function TweenyEaseCubicOut(t) {
    return 1 - power(1 - t, 3);
}
function TweenyEaseCubicInOut(t) {
    if (t < 0.5) return 4 * t * t * t;
    return 1 - power(-2 * t + 2, 3) / 2;
}
function TweenyEaseCubicOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseCubicOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseCubicIn(2 * t - 1);
}

function TweenyEaseQuartIn(t) {
    return t * t * t * t;
}
function TweenyEaseQuartOut(t) {
    return 1 - power(1 - t, 4);
}
function TweenyEaseQuartInOut(t) {
    if (t < 0.5) return 8 * t * t * t * t;
    return 1 - power(-2 * t + 2, 4) / 2;
}
function TweenyEaseQuartOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseQuartOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseQuartIn(2 * t - 1);
}

function TweenyEaseQuintIn(t) {
    return t * t * t * t * t;
}
function TweenyEaseQuintOut(t) {
    return 1 - power(1 - t, 5);
}
function TweenyEaseQuintInOut(t) {
    if (t < 0.5) return 16 * t * t * t * t * t;
    return 1 - power(-2 * t + 2, 5) / 2;
}
function TweenyEaseQuintOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseQuintOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseQuintIn(2 * t - 1);
}

function TweenyEaseExpoIn(t) {
    if (t == 0) return 0;
    return power(2, 10 * t - 10);
}
function TweenyEaseExpoOut(t) {
    if (t == 1) return 1;
    return 1 - power(2, -10 * t);
}
function TweenyEaseExpoInOut(t) {
    if (t == 0) return 0;
    if (t == 1) return 1;
    if (t < 0.5) return power(2, 20 * t - 10) / 2;
    return (2 - power(2, -20 * t + 10)) / 2;
}
function TweenyEaseExpoOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseExpoOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseExpoIn(2 * t - 1);
}

function TweenyEaseCircIn(t) {
    return 1 - sqrt(1 - t * t);
}
function TweenyEaseCircOut(t) {
    return sqrt(1 - power(t - 1, 2));
}
function TweenyEaseCircInOut(t) {
    if (t < 0.5) return (1 - sqrt(1 - power(2 * t, 2))) / 2;
    return (sqrt(1 - power(-2 * t + 2, 2)) + 1) / 2;
}
function TweenyEaseCircOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseCircOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseCircIn(2 * t - 1);
}

function TweenyEaseBackIn(t) {
    return __TWEENY_C3 * t * t * t - __TWEENY_C1 * t * t;
}
function TweenyEaseBackOut(t) {
    return 1 + __TWEENY_C3 * power(t - 1, 3) + __TWEENY_C1 * power(t - 1, 2);
}
function TweenyEaseBackInOut(t) {
    if (t < 0.5) return (power(2 * t, 2) * ((__TWEENY_C2 + 1) * 2 * t - __TWEENY_C2)) / 2;
    return (power(2 * t - 2, 2) * ((__TWEENY_C2 + 1) * (t * 2 - 2) + __TWEENY_C2) + 2) / 2;
}
function TweenyEaseBackOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseBackOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseBackIn(2 * t - 1);
}

function TweenyEaseSpringIn(t) {
    return 1 - TweenyEaseSpringOut(1 - t);
}
function TweenyEaseSpringOut(t) {
    var _s = 1 - t;
    return (sin(t * pi * (0.2 + 2.5 * t * t * t)) * power(_s, 2.2) + t) * (1 + 1.2 * _s);
}
function TweenyEaseSpringInOut(t) {
    if (t < 0.5) return 0.5 * TweenyEaseSpringIn(2 * t);
    return 0.5 + 0.5 * TweenyEaseSpringOut(2 * t - 1);
}
function TweenyEaseSpringOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseSpringOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseSpringIn(2 * t - 1);
}

function TweenyEaseElasticIn(t) {
    if (t == 0) return 0;
    if (t == 1) return 1;
    return -power(2, 10 * t - 10) * sin((t * 10 - 10.75) * __TWEENY_C4);
}
function TweenyEaseElasticOut(t) {
    if (t == 0) return 0;
    if (t == 1) return 1;
    return power(2, -10 * t) * sin((t * 10 - 0.75) * __TWEENY_C4) + 1;
}
function TweenyEaseElasticInOut(t) {
    if (t == 0) return 0;
    if (t == 1) return 1;
    if (t < 0.5) return -(power(2, 20 * t - 10) * sin((20 * t - 11.125) * __TWEENY_C5)) / 2;
    return (power(2, -20 * t + 10) * sin((20 * t - 11.125) * __TWEENY_C5)) / 2 + 1;
}
function TweenyEaseElasticOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseElasticOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseElasticIn(2 * t - 1);
}

function TweenyEaseBounceIn(t) {
    return 1 - TweenyEaseBounceOut(1 - t);
}
function TweenyEaseBounceOut(t) {
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
    if (t < 0.5) return (1 - TweenyEaseBounceOut(1 - 2 * t)) / 2;
    return (1 + TweenyEaseBounceOut(2 * t - 1)) / 2;
}
function TweenyEaseBounceOutIn(t) {
    if (t < 0.5) return 0.5 * TweenyEaseBounceOut(2 * t);
    return 0.5 + 0.5 * TweenyEaseBounceIn(2 * t - 1);
}
