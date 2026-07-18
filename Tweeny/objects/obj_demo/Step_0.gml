
if (keyboard_check_pressed(vk_f9)) {
    debug ^= 1;
    show_debug_overlay(debug);
}

//if (keyboard_check_pressed(vk_space)) {
//    var _t = new Tweeny(id);
//    _t.Variable(id, "value", 10, 1).Relative();
//    _t.Variable(id, "value", -5, 1).Relative();
//    _t.OnFinished(function() {
//        show_debug_message("final")
//    })
//    _t.OnLoopFinished(function() {
//        show_debug_message("loop")
//    })
//    _t.OnStepFinished(function() {
//        show_debug_message("step")
//    })
//}

if (mouse_check_button_pressed(mb_right)) {
    instance_create_depth(mouse_x, mouse_y, gems--, obj_gem)
}