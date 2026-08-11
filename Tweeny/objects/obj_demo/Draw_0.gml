
// Header
gpu_set_tex_filter(true);
draw_set_font(fnt_demo);
var _text = $"Tweeny v{__TWEENY_VERSION} - Demo 0{demo}\nUse [A] and [D] to navigate\nActive tweens: {array_length(TweenyGetAll())}";
draw_text(16, 24, _text);
gpu_set_tex_filter(false);
draw_set_font(-1);


TweenyDrawEase(64, 128, 256, 192, TweenyEaseBounceOut)
TweenyDrawEase(512, 128, 256, 192, TweenyEaseElasticOut)