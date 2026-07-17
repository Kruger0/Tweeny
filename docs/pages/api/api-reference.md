# Complete API Reference
---

## Constructor

`new Tweeny([source])`
Creates a new tween chain. Optional `source` instance: the tween auto-destructs if the source is destroyed. Leave undefined if the tween is inside a struct or script.

## Step Methods

| Method | Description |
|--------|-------------|
| `Variable(instance, variable, target, duration)` | Animate any numeric variable |
| `Color(instance, variable, target, duration)` | Animate a colour variable |
| `Angle(instance, variable, target, duration)` | Animate an angle (shortest path) |
| `String(instance, variable, target, duration)` | Animate a string variable |
| `Method(func, from, to, duration)` | Animate via custom callback |
| `Interval(duration)` | Wait/pause for a duration |
| `Callback(func, [args])` | Execute a function mid-sequence |

## Step Modifiers

These are called on the return value of step methods:

| Method | Description |
|--------|-------------|
| `SetEase(animCurve, [channel])` | Set per-step easing curve |
| `SetDelay(value)` | Delay before the step executes (in frames) |
| `SetInterpolate(func)` | Custom interpolation function (val1, val2, amount) |
| `Relative()` | Make the target value relative to current |
| `From(value)` | Override the starting value |
| `FromCurrent()` | Explicitly snap the from value to the current value |

## Parallel

| Method | Description |
|--------|-------------|
| `ParallelBegin()` | Start parallel step group |
| `ParallelEnd()` | End parallel step group |

## Tween Control

| Method | Description |
|--------|-------------|
| `SetSpeed(scale)` | Set playback speed multiplier |
| `SetLoops([loops])` | Set loop count (-1 = infinite, 1 = default) |
| `SetEase(animCurve, [channel])` | Set global easing for all steps |
| `Skip()` | Jump to the end immediately |
| `Pause()` | Pause the tween |
| `Play()` | Resume the tween |
| `Stop()` | Pause and reset to beginning |
| `Destroy()` | Destroy the tween |
| `Execute()` | Start the tween |

## Tween Queries

| Method | Description |
|--------|-------------|
| `IsRunning()` | Check if the tween is actively playing |
| `IsPaused()` | Check if the tween is paused |
| `IsValid()` | Check if the tween is valid |
| `GetLoops()` | Get total loop count |
| `GetLoopsLeft()` | Get remaining loops |
| `GetElapsedTime()` | Get elapsed time |

## Callbacks

| Method | Description |
|--------|-------------|
| `OnFinished(callback)` | Called when all steps and loops finish |
| `OnLoopFinished(callback)` | Called at the end of each loop |
| `OnStepFinished(callback)` | Called when an individual step completes |

## Global Functions

| Function | Description |
|----------|-------------|
| `TweenySetDeltatime(dt)` | Override the global deltatime |
| `TweenyPauseAll()` | Pause all active tweens |
| `TweenyResumeAll()` | Resume all paused tweens |
| `TweenyStopAll()` | Stop all tweens |
| `TweenyClearAll()` | Destroy all tweens |
| `TweenyDestroyAll()` | Destroy the tween system entirely |
| `TweenyGetAll()` | Get an array of all active tweens |
