
// Header
gpu_set_tex_filter(true);
draw_set_font(fnt_demo);
var _text = $"Tweeny v{__TWEENY_VERSION} - Demo 0{demo}\nUse [A] and [D] to navigate\nActive tweens: {array_length(TweenyGetAll())}";
draw_text(16, 24, _text);
gpu_set_tex_filter(false);
draw_set_font(-1);

var _len = array_length(funcs);
var _fam_per_row = 2;              // 1 = 4 cols, 2 = 8 cols
var _cols = 4;                     // variants per family
var _w = 146;                      // fits 8 across 1280
var _h = 64;
var _sep = 16;

var _fam_w = _cols * _w + (_cols - 1) * _sep;
var _grid_w = _fam_per_row * _fam_w + (_fam_per_row - 1) * _sep;
var _rows = ceil(_len / _fam_per_row);
var _grid_h = _rows * _h + (_rows - 1) * _sep;
var _ox = (room_width - _grid_w) / 2;
var _oy = (room_height - _grid_h) / 2;

for (var i = 0; i < _len; i++) {
    var _family = funcs[i];
    var _fx = _ox + (i mod _fam_per_row) * (_fam_w + _sep);
    var _fy = _oy + (i div _fam_per_row) * (_h + _sep);
    for (var j = 0; j < 4; j++) {
        TweenyDrawEase(_fx + j * (_w + _sep), _fy, _w, _h, _family[j], _family[4]);
    }
}
