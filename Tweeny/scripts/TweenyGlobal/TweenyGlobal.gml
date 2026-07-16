// feather ignore all

function TweenySetDeltatime(dt) {
    static __data = __TweenyInit();
    __data.dt = dt;
}

function TweenyPauseAll() {
    static __data = __TweenyInit();
    time_source_pause(__data.timeSource);
}

function TweenyResumeAll() {
    static __data = __TweenyInit();
    time_source_start(__data.timeSource);
}

function TweenyStopAll() {
    static __data = __TweenyInit();
    time_source_stop(__data.timeSource);
}

function TweenyClearAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0; i < array_length(_tweens); i++) {
        _tweens[i].__dead = true;
    }
}

function TweenyDestroyAll() {
    static __data = __TweenyInit();
    time_source_destroy(__data.timeSource);
}

function TweenyGetAll() {
    static __data = __TweenyInit();
    return __data.tweens;
}
