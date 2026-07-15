
debug = false;
show_debug_overlay(debug);
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

points = {
    x : 16,
    y : 200,
    xScl : 1,
    yScl : 1,
    ang : 0,
    color : c_white,
    alpha : 1,
    value : 0,
    
    draw : function() {
        draw_set_font(fnt_sans);
        var _str = $"Score: {value}"
        draw_text_transformed_color(x, y, _str, xScl, yScl, ang, color, color, color, color, alpha);
        draw_set_font(-1);
    }
}
