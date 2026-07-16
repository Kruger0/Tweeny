// feather ignore all

// WIP

function TweenyEaseLinear(_t) {
	return _t;
}

function TweenyEaseBounceOut(x) {
    var n1 = 7.5625;
    var d1 = 2.75;
    if (x < 1 / d1) {
        return n1 * x * x;
    } else if (x < 2 / d1) {
        x -= 1.5 / d1;
        return n1 * x * x + 0.75;
    } else if (x < 2.5 / d1) {
        x -= 2.25 / d1;
        return n1 * x * x + 0.9375;
    } else {
        x -= 2.625 / d1;
        return n1 * x * x + 0.984375;
    }
}

function TweenyEaseElasticOut(x) {
    var c4 = (2 * pi) / 3;
    if (x == 0) return 0;
    if (x == 1) return 1;
    return power(2, -10 * x) * sin((x * 10 - 0.75) * c4) + 1;
}
