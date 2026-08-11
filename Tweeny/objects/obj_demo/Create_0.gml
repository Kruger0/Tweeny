
debug = false;
show_debug_overlay(debug);
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;
demo = 1;
room_goto(demo);

v = 0

t = new Tweeny().SetLoops()
t.Variable(id, "v", 50, 3).Relative()
t.Variable(id, "v", 50, 3).Relative()
t.Variable(id, "v", 50, 3).Relative()
t.Variable(id, "v", 50, 3).Relative()
t.OnFinished(function() {show_debug_message("finished")} )
t.OnStepFinished(function() {show_debug_message("stepped")} )
t.OnLoopFinished(function() {show_debug_message("looped")} )

funcs = [
    [TweenyEaseLinearIn, TweenyEaseLinearOut, TweenyEaseLinearInOut, TweenyEaseLinearOutIn, random(c_white)],
    [TweenyEaseStepIn, TweenyEaseStepOut, TweenyEaseStepInOut, TweenyEaseStepOutIn, random(c_white)],
    [TweenyEaseSineIn, TweenyEaseSineOut, TweenyEaseSineInOut, TweenyEaseSineOutIn, random(c_white)],
    [TweenyEaseQuadIn, TweenyEaseQuadOut, TweenyEaseQuadInOut, TweenyEaseQuadOutIn, random(c_white)],
    [TweenyEaseCubicIn, TweenyEaseCubicOut, TweenyEaseCubicInOut, TweenyEaseCubicOutIn, random(c_white)],
    [TweenyEaseQuartIn, TweenyEaseQuartOut, TweenyEaseQuartInOut, TweenyEaseQuartOutIn, random(c_white)],
    [TweenyEaseQuintIn, TweenyEaseQuintOut, TweenyEaseQuintInOut, TweenyEaseQuintOutIn, random(c_white)],
    [TweenyEaseExpoIn, TweenyEaseExpoOut, TweenyEaseExpoInOut, TweenyEaseExpoOutIn, random(c_white)],
    [TweenyEaseCircIn, TweenyEaseCircOut, TweenyEaseCircInOut, TweenyEaseCircOutIn, random(c_white)],
    [TweenyEaseBackIn, TweenyEaseBackOut, TweenyEaseBackInOut, TweenyEaseBackOutIn, random(c_white)],
    [TweenyEaseSpringIn, TweenyEaseSpringOut, TweenyEaseSpringInOut, TweenyEaseSpringOutIn, random(c_white)],
    [TweenyEaseElasticIn, TweenyEaseElasticOut, TweenyEaseElasticInOut, TweenyEaseElasticOutIn, random(c_white)],
    [TweenyEaseBounceIn, TweenyEaseBounceOut, TweenyEaseBounceInOut, TweenyEaseBounceOutIn, random(c_white)]
]