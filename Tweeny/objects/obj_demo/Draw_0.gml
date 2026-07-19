
draw_set_font(fnt_demo);
var _text = $"Tweeny v{__TWEENY_VERSION} | Demo Project";
draw_text(16, 24, _text);
//draw_text(650, 24, text.str);
draw_text(16, 48, array_length(TweenyGetAll()));
draw_set_font(-1);

points.draw();
//coin.Draw();

cube1.Draw();
cube2.Draw();
cube3.Draw();

TweenyDrawEase(64, 128, 256, 192, TweenyEaseBounceOut, 256)
TweenyDrawEase(512, 128, 256, 192, TweenyEaseElasticOut, 256)



