// feather ignore all
/// @desc Draws the given easing function as a graph.
/// @param {Real} x The top position of the graph.
/// @param {Real} y The left position of the graph.
/// @param {Real} w The width of the graph.
/// @param {Real} h The height of the graph.
/// @param {Function} f The easing function to draw.
/// @param {Real} c The color to draw the ease with. Defaults to white.
/// @param {Real} p The number of segments. Defaults to 128.
/// @param {Real} l The line width. Defaults to 1.
function TweenyDrawEase(x, y, w, h, f, c = c_white, p = 128, l = 1) {
    var _px = x;
    var _py = y + h;
    for (var i = 1; i <= p; i++) {
        var _l = i / p;
        var _nx = x + (_l * w);
        var _ny = y + h - (f(_l) * h);
        draw_line_width_color(_px, _py, _nx, _ny, l, c, c);
        _px = _nx;
        _py = _ny;
    }
    draw_rectangle(x, y, x + w, y + h, true);
}
