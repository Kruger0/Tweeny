
debug = false;
show_debug_overlay(debug);
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

gems = 0

points = {
    x : 16,
    y : 100,
    xScl : 1,
    yScl : 1,
    ang : 0,
    color : c_white,
    alpha : 1,
    value : 0,
    
    draw : function() {
        draw_set_font(fnt_demo);
        var _str = $"Score: {value}"
        draw_set_valign(1)
        draw_text_transformed_color(x, y, _str, xScl, yScl, ang, color, color, color, color, alpha);
        draw_set_valign(0)
        draw_set_font(-1);
    }
}

tp = new Tweeny().SetEaseCurve(TWEENY_EASE_CUBIC, TWEENY_CHANNEL_OUT).SetLoops();
tp.Variable(points, "value", 100, 3).Relative();
tp.ParallelBegin();
tp.Variable(points, "xScl", 1, 1).From(1.2).SetEaseCurve(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
tp.Variable(points, "yScl", 1, 1).From(1.2).SetEaseCurve(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
tp.Color(points, "color", c_white, 1).From(c_yellow).SetEaseCurve(TWEENY_EASE_CUBIC, TWEENY_CHANNEL_OUT);
tp.ParallelEnd();

//text = {
//    str: "Agora você lê"
//}

//tt = new Tweeny(id).SetLoops().SetEaseCurve(TWEENY_EASE_SINE, TWEENY_CHANNEL_IN_OUT)
//tt.String(text, "str", "You can read this", 3)
//tt.Interval(1)
//tt.String(text, "str", "But cannot read that", 3)
//tt.Interval(1)

Cube = function(x, y, ang, col) constructor {
    self.x = x;
    self.y = y;
    self.xScl = 1;
    self.yScl = 1;
    self.ang = ang;
    self.col = col;
    self.a = 1;
    
    Draw = function() {
        draw_sprite_ext(spr_cube, 0, x, y, xScl, yScl, ang, col, a);
    }
}


cube1 = new Cube(450, 250, 0, c_white);
with (cube1) {
    t = new Tweeny();
    t.SetEaseFunc(TweenyEaseBounceOut);
    t.SetLoops();
    t.Variable(self, "x", 100, 1).Relative();
    t.Variable(self, "y", 100, 1).Relative().SetEaseFunc(TweenyEaseElasticOut);
    t.Variable(self, "x", -100, 1).Relative();
    t.Variable(self, "y", -100, 1).Relative().SetEaseFunc(TweenyEaseElasticOut);
}

cube2 = new Cube(450, 150, 0, c_white);
with (cube2) {
    t = new Tweeny();
    t.SetEaseFunc(TweenyEaseElasticOut);
    t.SetLoops();
    t.ParallelBegin()
    t.Variable(self, "x", 100, 1).Relative();
    t.Variable(self, "ang", 180, 1).Relative();
    t.ParallelEnd();
    t.ParallelBegin();
    t.Variable(self, "x", -100, 1).Relative();
    t.Variable(self, "ang", 180, 1).Relative();
    t.ParallelEnd();
}

cube3 = new Cube(450, 450, 0, c_white);
with (cube3) {
    t = new Tweeny();
    t.SetEaseFunc(TweenyEaseElasticOut);
    t.SetLoops();
    t.ParallelBegin()
    t.Variable(self, "xScl", 0.5, 1);
    t.Variable(self, "yScl", 1.5, 1);
    t.Color(self, "col", c_red, 1).SetEaseCurve(TWEENY_EASE_SINE, TWEENY_CHANNEL_OUT);
    t.ParallelEnd();
    t.ParallelBegin();
    t.Variable(self, "xScl", 1.5, 1);
    t.Variable(self, "yScl", 0.5, 1);
    t.Variable(self, "x", 100, 1).Relative();
    t.Color(self, "col", c_white, 1).SetEaseCurve(TWEENY_EASE_SINE, TWEENY_CHANNEL_OUT);;
    t.ParallelEnd();
    t.ParallelBegin();
    t.Variable(self, "xScl", 0.5, 1);
    t.Variable(self, "yScl", 1.5, 1);
    t.Color(self, "col", c_blue, 1).SetEaseCurve(TWEENY_EASE_SINE, TWEENY_CHANNEL_OUT);;
    t.ParallelEnd();
    t.ParallelBegin();
    t.Variable(self, "xScl", 1.5, 1);
    t.Variable(self, "yScl", 0.5, 1);
    t.Variable(self, "x", -100, 1).Relative();
    t.Color(self, "col", c_white, 1).SetEaseCurve(TWEENY_EASE_SINE, TWEENY_CHANNEL_OUT);;
    t.ParallelEnd()
}


//coin = {
//    x: 750,
//    y: 192,
//    xScl: 1,
//    yScl: 1,
//    rot: 0,
//    col: c_white,
//    a: 1,
//    Draw: function() {
//        draw_sprite_ext(spr_coin, 0, x, y, xScl, yScl, rot, col, a);
//    }
//}

//tc = new Tweeny(id).SetLoops().SetEaseCurve(TWEENY_EASE_CUBIC, TWEENY_CHANNEL_OUT);
//tc.ParallelBegin();
//tc.Angle(coin, "rot", 180, 1).Relative()
//tc.Variable(coin, "a", 0, 1)
//tc.Variable(coin, "xScl", 0, 1)
//tc.Variable(coin, "yScl", 0, 1)
//tc.ParallelEnd()
//tc.ParallelBegin()
//tc.Variable(coin, "a", 1, 0.5)
//tc.Variable(coin, "xScl", 1, 1).SetEaseFunc(TweenyEaseElasticOut);
//tc.Variable(coin, "yScl", 1, 1).SetEaseFunc(TweenyEaseElasticOut);
//tc.ParallelEnd()