
debug = false;
show_debug_overlay(debug);
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;
demo = 1;
room_goto(demo);

v = 0

t = new Tweeny().SetLoops()
t.Variable(id, "v", 50, 3).Relative()
t.Variable(id, "v", 50, 3).Relative()
t.Variable(id, "v", 50, 3).Relative()
t.Variable(id, "v", 50, 3).Relative()
t.OnFinished(function() {show_debug_message("finished")} )
t.OnStepFinished(function() {show_debug_message("stepped")} )
t.OnLoopFinished(function() {show_debug_message("looped")} )
