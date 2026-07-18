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

function TweenyEaseSineIn(t) {
	return t;
}
function TweenyEaseSineOut(t) {
	return t;
}
function TweenyEaseSineInOut(t) {
	return t;
}
function TweenyEaseSineOutIn(t) {
	return t;
}

function TweenyEaseQuadIn(t) {
	return t;
}
function TweenyEaseQuadOut(t) {
	return t;
}
function TweenyEaseQuadInOut(t) {
	return t;
}
function TweenyEaseQuadOutIn(t) {
	return t;
}

function TweenyEaseCubicIn(t) {
	return t;
}
function TweenyEaseCubicOut(t) {
	return t;
}
function TweenyEaseCubicInOut(t) {
		return t;
}
function TweenyEaseCubicOutIn(t) {
	return t;
}

function TweenyEaseQuartIn(t) {
	return t;
}
function TweenyEaseQuartOut(t) {
	return t;
}
function TweenyEaseQuartInOut(t) {
		return t;
}
function TweenyEaseQuartOutIn(t) {
	return t;
}

function TweenyEaseQuintIn(t) {
	return t;
}
function TweenyEaseQuintOut(t) {
	return t;
}
function TweenyEaseQuintInOut(t) {
		return t;
}
function TweenyEaseQuintOutIn(t) {
	return t;
}

function TweenyEaseExpoIn(t) {
	return t;
}
function TweenyEaseExpoOut(t) {
	return t;
}
function TweenyEaseExpoInOut(t) {
		return t;
}
function TweenyEaseExpoOutIn(t) {
	return t;
}

function TweenyEaseCircIn(t) {
	return t;
}
function TweenyEaseCircOut(t) {
	return t;
}
function TweenyEaseCircInOut(t) {
		return t;
}
function TweenyEaseCircOutIn(t) {
	return t;
}

function TweenyEaseBackIn(t) {
	return t;
}
function TweenyEaseBackOut(t) {
	return t;
}
function TweenyEaseBackInOut(t) {
		return t;
}
function TweenyEaseBackOutIn(t) {
	return t;
}

function TweenyEaseSpringIn(t) {
	return t;
}
function TweenyEaseSpringOut(t) {
	return t;
}
function TweenyEaseSpringInOut(t) {
		return t;
}
function TweenyEaseSpringOutIn(t) {
	return t;
}

function TweenyEaseElasticIn(t) {
	return t;
}
function TweenyEaseElasticOut(t) {
    var c4 = (2 * pi) / 3;
    if (t == 0) return 0;
    if (t == 1) return 1;
    return power(2, -10 * t) * sin((t * 10 - 0.75) * c4) + 1;
}
function TweenyEaseElasticInOut(t) {
		return t;
}
function TweenyEaseElasticOutIn(t) {
	return t;
}

function TweenyEaseBounceIn(t) {
	return t;
}
function TweenyEaseBounceOut(t) {
    var n1 = 7.5625;
    var d1 = 2.75;
    if (t < 1 / d1) {
        return n1 * t * t;
    } else if (t < 2 / d1) {
        t -= 1.5 / d1;
        return n1 * t * t + 0.75;
    } else if (t < 2.5 / d1) {
        t -= 2.25 / d1;
        return n1 * t * t + 0.9375;
    } else {
        t -= 2.625 / d1;
        return n1 * t * t + 0.984375;
    }
}
function TweenyEaseBounceInOut(t) {
		return t;
}
function TweenyEaseBounceOutIn(t) {
	return t;
}
