
var _time = 0.6;
var _scl = 0.1;
tween = new Tweeny(id).SetLoops().SetEase(TWEENY_EASE_SINE, TWEENY_CHANNEL_IN_OUT);
tween.ParallelBegin();
    tween.Variable(id, "image_xscale", -_scl, _time).Relative();
    tween.Variable(id, "image_yscale",  _scl, _time).Relative();
tween.ParallelEnd();
tween.ParallelBegin();
    tween.Variable(id, "image_xscale",  _scl, _time).Relative();
    tween.Variable(id, "image_yscale", -_scl, _time).Relative();
tween.ParallelEnd();
