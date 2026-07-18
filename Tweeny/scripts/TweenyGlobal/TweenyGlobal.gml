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

function TweenyDrawEase(_x, _y, _w, _h, _f, _p = 64, _lw = 2) {
    var _px = _x;
    var _py = _y + _h;
    for (var i = 1; i <= _p; i++) {
        var _l = i / _p;
        var _nx = _x + (_l * _w);
        var _ny = _y + _h - (_f(_l) * _h);
        draw_line_width(_px, _py, _nx, _ny, _lw);
        _px = _nx;
        _py = _ny;
    }
    draw_rectangle(_x, _y, _x + _w, _y + _h, true);
}