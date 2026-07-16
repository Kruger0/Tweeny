[![GitHub license](https://img.shields.io/github/license/Kruger0/Tweeny)](https://github.com/Kruger0/Tweeny/blob/main/LICENSE)
[![GitHub release](https://img.shields.io/github/v/release/Kruger0/Tweeny)](https://github.com/Kruger0/Tweeny/releases)
[![GameMaker](https://img.shields.io/badge/GameMaker-LTS2026-blue?logo=gamemaker)](https://gamemaker.io/)
[![GitHub last commit](https://img.shields.io/github/last-commit/Kruger0/Tweeny)](https://github.com/Kruger0/Tweeny/commits)

<p align="center"><img src="https://raw.githubusercontent.com/Kruger0/Tweeny/main/LOGO.png" style="display:block; margin:auto; width:200px"></p>
<h1 align="center">Tweeny 1.0.0</h1>

<p align="center">Tweening animation engine for GameMaker LTS 2026</p>

Tweeny is a tweening engine made for GameMaker, featuring a fluent chainable API, fire-and-forget use, more than 50 easing modes, sequential and parallel step execution, and flexible interpolation for variables, colors, angles, strings, and custom methods.

## How to use!

1. Create a tween instance and chain steps together:
   ```js
   // Create a new tween
   t = new Tweeny();

   // Animate a variable over 2 seconds
   t.Variable(id, "x", 300, 2);
   ```

2. Use the fluent API to configure steps inline:
   ```js
   // Chain multiple steps with easing
   t.Variable(id, "x", 300, 1).SetEase(TWEENY_EASE_BOUNCE, TWEENY_CHANNEL_OUT);
   t.Variable(id, "y", 400, 1).SetEase(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
   ```

3. Run steps in parallel for simultaneous animations:
   ```js
   // Move X and Y at the same time
   t.ParallelBegin();
   t.Variable(id, "x", 300, 1);
   t.Variable(id, "y", 400, 1);
   t.ParallelEnd();
   ```

4. Set loops, callbacks, and control playback:
   ```js
   t.Variable(id, "x", 300, 1)
   t.Variable(id, "x", 100, 1)
   t.SetLoops(3).OnFinished(function() {
      show_debug_message("Animation complete!");
   })

   // Control playback
   t.Pause();
   t.Play();
   t.Skip();  // Jump to end
   ```

## Advanced Features

### Easing Curves
12 easing curves are available via macros, each with In, Out, InOut, and OutIn channels:
```js
// Set easing on the whole tween
t.SetEase(TWEENY_EASE_BOUNCE, TWEENY_CHANNEL_OUT)
t.Variable(id, "x", 500, 1)

// Or per-step
t.Variable(id, "x", 500, 1).SetEase(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_IN)
```

### Color & Angle Interpolation
Color and angle tweens handle their types automatically:
```js
// Fade a color
t.Color(id, "colour", c_red, 1);

// Rotate with shortest angle path
t.Angle(id, "image_angle", 720, 2);
```

### String Animation
Animate strings by interpolating character ordinals:
```js
t.String(id, "caption", "HELLO WORLD", 1);
```

### Custom Method Tween
Animate arbitrary values through a callback function:
```js
t.Method(function(value) {
    audio_set_gain(snd_music, value, 0);
}, 0, 1, 2).SetEase(TWEENY_EASE_SINE, TWEENY_CHANNEL_IN);
```

### Relative Values
Target values relative to the current value:
```js
t.Variable(id, "x", 200, 1).Relative();
```

### From Values
Override the starting value of a step:
```js
t.Variable(id, "x", 500, 1).From(0);
```

### Delay & Interval
Add delays between steps or wait without animation:
```js
t.Variable(id, "x", 300, 2);
t.Interval(1); // Wait 1 second
t.Variable(id, "y", 400, 2);
```

### Looping
Loop animations a finite number of times or infinitely:
```js
// Infinite loop
t.Variable(id, "x", 500, 1);
t.Variable(id, "x", 100, 1);
t.SetLoops();

// Loop 5 times
t.SetLoops(5);

// Listen for loop completions
t.OnLoopFinished(function() {
    show_debug_message("Loop finished!");
});
```

### Custom Interpolation
Provide your own lerp function for a step:
```js
t.Variable(id, "x", 500, 1).SetInterpolate(customLerp);
```

### Global Control
Manage all tweens at once:
```js
TweenyPauseAll();
TweenyResumeAll();
TweenyStopAll();
TweenyClearAll();
TweenyDestroyAll();

// Get all active tweens
var all = TweenyGetAll();
```

### Deltatime
Override the deltatime for frame-independent animation:
```js
TweenySetDeltatime(1.0);
```

## Complete API Reference

### Tween Constructor - `new Tweeny([source])`
Creates a new tween chain. Optional `source` instance - the tween auto-destructs if the source is destroyed. Leave undefined if the tween is inside a struct or script

### Step Methods
- `Variable(instance, variable, target, duration)` - Animate any numeric variable
- `Color(instance, variable, target, duration)` - Animate a colour variable
- `Angle(instance, variable, target, duration)` - Animate an angle (shortest path)
- `String(instance, variable, target, duration)` - Animate a string variable
- `Method(func, from, to, duration)` - Animate via custom callback (receives interpolated value)
- `Interval(duration)` - Wait/pause for a duration
- `Callback(func, [args])` - Execute a function mid-sequence

### Step Methods (returned by step methods above)
- `SetEase(animCurve, [channel])` - Set per-step easing curve
- `SetDelay(value)` - Delay before the step executes (in frames)
- `SetInterpolate(func)` - Custom interpolation function (val1, val2, amount)
- `Relative()` - Make the target value relative to current
- `From(value)` - Override the starting value
- `FromCurrent()` - Explicitly snap the from value to the current value

### Parallel
- `ParallelBegin()` - Start parallel step group
- `ParallelEnd()` - End parallel step group

### Tween Control
- `SetSpeed(scale)` - Set playback speed multiplier
- `SetLoops([loops])` - Set loop count (-1 = infinite, 1 = default)
- `SetEase(animCurve, [channel])` - Set global easing for all steps
- `Skip()` - Jump to the end immediately
- `Pause()` - Pause the tween
- `Play()` - Resume the tween
- `Stop()` - Pause and reset to beginning
- `Destroy()` - Destroy the tween
- `Execute()` - Start the tween

### Tween Queries
- `IsRunning()` - Check if the tween is actively playing
- `IsPaused()` - Check if the tween is paused
- `IsValid()` - Check if the tween is valid
- `GetLoops()` - Get total loop count
- `GetLoopsLeft()` - Get remaining loops
- `GetElapsedTime()` - Get elapsed time

### Callbacks
- `OnFinished(callback)` - Called when all steps and loops finish
- `OnLoopFinished(callback)` - Called at the end of each loop
- `OnStepFinished(callback)` - Called when an individual step completes

### Global Functions
- `TweenySetDeltatime(dt)` - Override the global deltatime
- `TweenyPauseAll()` - Pause all active tweens
- `TweenyResumeAll()` - Resume all paused tweens
- `TweenyStopAll()` - Stop all tweens
- `TweenyClearAll()` - Destroy all tweens
- `TweenyDestroyAll()` - Destroy the tween system entirely
- `TweenyGetAll()` - Get an array of all active tweens

### Easing Curve Macros
- `TWEENY_EASE_STEP`, `TWEENY_EASE_LINEAR`, `TWEENY_EASE_SINE`, `TWEENY_EASE_QUAD`, `TWEENY_EASE_CUBIC`, `TWEENY_EASE_QUART`, `TWEENY_EASE_QUINT`, `TWEENY_EASE_EXPO`, `TWEENY_EASE_CIRC`, `TWEENY_EASE_BACK`, `TWEENY_EASE_BOUNCE`, `TWEENY_EASE_ELASTIC`, `TWEENY_EASE_SPRING`

### Easing Channel Macros
- `TWEENY_CHANNEL_IN`, `TWEENY_CHANNEL_OUT`, `TWEENY_CHANNEL_IN_OUT`, `TWEENY_CHANNEL_OUT_IN`
