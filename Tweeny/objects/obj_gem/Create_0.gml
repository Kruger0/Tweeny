
image_xscale = 0;
image_yscale = 0;

t = new Tweeny().SetEaseFunc(TweenyEaseElasticOut);
t.ParallelBegin();
t.Variable(id, "image_xscale", 1, 1);
t.Variable(id, "image_yscale", 1, 1);
t.ParallelEnd();
t.Variable(id, "image_alpha", 0, 1).SetEaseFunc(TweenyEaseLinearIn);
t.Callback(method(self, function() {
    instance_destroy(id);
}));
