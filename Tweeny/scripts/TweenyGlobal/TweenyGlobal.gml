// feather ignore all
/// @desc Sets the global time scale applied to all tweens.
/// @param {Real} scale The time scale multiplier.
function TweenySetTimeScale(scale) {
    static __data = __TweenyInit();
    __data.timeScale = scale;
}

/// @desc Returns the tween element matching the given unique id.
/// @param {Id} uid The unique id assigned when the tween was created.
/// @return {Struct.Tweeny} The matching tween element, or undefined if none is found.
function TweenyGet(uid) {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        var _tween = _tweens[i];
        if (_tween.__uid == uid) {
            return _tween;
        };
    }
}

/// @desc Returns an array of all active tween elements.
/// @return {Array} The array of tween elements.
function TweenyGetAll() {
    static __data = __TweenyInit();
    return __data.tweens;
}

/// @desc Pauses all active tween elements.
function TweenyPauseAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Pause();
    }
}

/// @desc Resumes all paused tween elements.
function TweenyResumeAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Play();
    }
}

/// @desc Stops all tween elements, resetting each to its initial step.
function TweenyStopAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Stop();
    }
}

/// @desc Finishes all tween elements, jumping to their end values and firing their completion callbacks.
function TweenyFinishAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Finish();
    }
}

/// @desc Destroys all tween elements, removing them from memory without firing completion callbacks.
function TweenyDestroyAll() {
    static __data = __TweenyInit();
    var _tweens = __data.tweens;
    for (var i = 0, n = array_length(__data.tweens); i < n; i++) {
        _tweens[i].Destroy();
    }
}

/// @desc Draws the given easing function as a graph.
/// @param {Real} x The top position of the graph.
/// @param {Real} y The left position of the graph.
/// @param {Real} w The width of the graph.
/// @param {Real} h The height of the graph.
/// @param {Function} f The easing function to draw.
/// @param {Real} c The color to draw the ease with.
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
