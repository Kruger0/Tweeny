
draw_set_font(fnt_sans);
draw_set_valign(1);
draw_set_halign(1);
matrix_set(matrix_world, matrix_build(x, y, 0, 0, 0, ang, xScl, yScl, 1))
draw_sprite_ext(sprite_index, 0, xOff, yOff, image_xscale, image_yscale, 0, btnColor, image_alpha);
draw_text_color(xOff, yOff, label, lblColor, lblColor, lblColor, lblColor, image_alpha);
matrix_set(matrix_world, matrix_build_identity());
draw_set_font(-1);
draw_set_valign(0);
draw_set_halign(0);
