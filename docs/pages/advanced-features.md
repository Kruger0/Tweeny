# Advanced Features

## Easing Curves

12 easing curves are available via macros, each with In, Out, InOut, and OutIn channels:

```js
// Global easing for the entire tween
t.SetEase(TWEENY_EASE_BOUNCE, TWEENY_CHANNEL_OUT);
t.Variable(id, "x", 500, 1);

// Per-step easing
t.Variable(id, "x", 500, 1).SetEase(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_IN);
```

### Available Curves

`TWEENY_EASE_STEP`, `TWEENY_EASE_LINEAR`, `TWEENY_EASE_SINE`, `TWEENY_EASE_QUAD`, `TWEENY_EASE_CUBIC`, `TWEENY_EASE_QUART`, `TWEENY_EASE_QUINT`, `TWEENY_EASE_EXPO`, `TWEENY_EASE_CIRC`, `TWEENY_EASE_BACK`, `TWEENY_EASE_BOUNCE`, `TWEENY_EASE_ELASTIC`, `TWEENY_EASE_SPRING`

### Channels

`TWEENY_CHANNEL_IN`, `TWEENY_CHANNEL_OUT`, `TWEENY_CHANNEL_IN_OUT`, `TWEENY_CHANNEL_OUT_IN`

## Color & Angle Interpolation

Color and angle tweens handle their types automatically:

```js
t.Color(id, "colour", c_red, 1);
t.Angle(id, "image_angle", 720, 2);
```

## String Animation

Animate strings by interpolating character ordinals:

```js
t.String(id, "caption", "HELLO WORLD", 1);
```

## Custom Method Tween

Animate arbitrary values through a callback:

```js
t.Method(function(value) {
    audio_set_gain(snd_music, value, 0);
}, 0, 1, 2).SetEase(TWEENY_EASE_SINE, TWEENY_CHANNEL_IN);
```

## Relative Values

Target values relative to the current value:

```js
t.Variable(id, "x", 200, 1).Relative();
```

## From Values

Override the starting value of a step:

```js
t.Variable(id, "x", 500, 1).From(0);
```

## Delay & Interval

Add delays between steps:

```js
t.Variable(id, "x", 300, 2);
t.Interval(1); // Wait 1 second
t.Variable(id, "y", 400, 2);
```

## Looping

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

## Custom Interpolation

Provide your own lerp function:

```js
t.Variable(id, "x", 500, 1).SetInterpolate(customLerp);
```

## Global Control

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

## Deltatime

Override the deltatime for frame-independent animation:

```js
TweenySetDeltatime(1.0);
```
