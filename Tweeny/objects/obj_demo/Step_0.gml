
// Debug overlay
if (keyboard_check_pressed(vk_f9)) {
    debug ^= 1;
    show_debug_overlay(debug);
}

// Room change
var _delta = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
if (_delta != 0) {
    demo = clamp(demo + _delta, 1, 3);
    room_goto(demo);
}


if (keyboard_check_pressed(vk_space)) t.Skip()
if (keyboard_check_pressed(vk_enter)) t.Finish()
if (keyboard_check_pressed(vk_backspace)) TweenyFinishAll()