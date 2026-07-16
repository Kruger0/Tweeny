
var _x1 = x - sprite_width/2;
var _y1 = y - sprite_height/2;
var _x2 = x + sprite_width/2;
var _y2 = y + sprite_height/2;

var _time = 0.7;
var _yOff = 8;
if (point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2)) {
    if (!hovered) {
        hovered = true;
        if (tween) tween.Destroy();
        tween = new Tweeny(id).SetEaseCurve(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
        tween.ParallelBegin();
        tween.Angle(id, "ang", 0, _time).From(10);
        tween.Variable(id, "yOff", -_yOff, _time).From(0);
        tween.Color(id,"btnColor", #FFFFFF, 0.2).SetEaseCurve(TWEENY_EASE_EXPO, TWEENY_CHANNEL_OUT);
        tween.Color(id,"lblColor", #FF4040, 0.2).SetEaseCurve(TWEENY_EASE_EXPO, TWEENY_CHANNEL_OUT);
    }
} else {
    if (hovered) {
        hovered = false;
        if (tween) tween.Destroy();
        tween = new Tweeny(id).SetEaseCurve(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
        tween.ParallelBegin();
        tween.Variable(id, "xScl", 1, _time);
        tween.Variable(id, "yScl", 1, _time);
        tween.Variable(id, "yOff", 0, _time);
        tween.Angle(id, "ang", 0, _time);
        tween.Color(id,"btnColor", #00CDF9, 0.2).SetEaseCurve(TWEENY_EASE_EXPO, TWEENY_CHANNEL_OUT);
        tween.Color(id,"lblColor", #101010, 0.2).SetEaseCurve(TWEENY_EASE_EXPO, TWEENY_CHANNEL_OUT);
    }
}

if (hovered) {
    if (mouse_check_button_pressed(mb_left)) {
        if (tween) tween.Destroy();
        tween = new Tweeny(id).SetEaseCurve(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
        tween.ParallelBegin();
        tween.Variable(id, "xScl", 1, _time).From(1.2);
        tween.Variable(id, "yScl", 1, _time).From(0.9);
        tween.Angle(id, "ang", 0, _time).From(-4);
        tween.Variable(id, "yOff", -_yOff, _time).From(_yOff*0.2);
        tween.Color(id,"btnColor", #FFFFFF, 0).SetEaseCurve(TWEENY_EASE_EXPO, TWEENY_CHANNEL_OUT);
        tween.Color(id,"lblColor", #FF4040, 0).SetEaseCurve(TWEENY_EASE_EXPO, TWEENY_CHANNEL_OUT);
    }
}