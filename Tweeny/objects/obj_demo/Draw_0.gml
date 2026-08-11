
// Header
gpu_set_tex_filter(true);
draw_set_font(fnt_demo);
var _text = $"Tweeny v{__TWEENY_VERSION} - Demo 0{demo}\nUse [A] and [D] to navigate";
draw_text(16, 24, _text);
gpu_set_tex_filter(false);
draw_set_font(-1);

draw_text(256, 256, v)