# Getting Started

## Installation

1. Download the latest version of Tweeny from [releases](https://github.com/Kruger0/Tweeny/releases)
2. On your GameMaker Project top panel, click on Tools -> Import Local Package (or just drag the .yymp)
2. Press "Add All" and then "Import".

## Creating a Tween

Create a tween instance and chain steps together:

```js
t = new Tweeny();
t.Variable(id, "x", 300, 2);
```

The `source` parameter on the constructor is optional. Pass an instance to enable auto-destruction when that instance is destroyed. Leave it undefined if the tween is inside a struct or standalone script.

## Fluent API

Chain multiple steps with inline configuration:

```js
t.Variable(id, "x", 300, 1).SetEase(TWEENY_EASE_BOUNCE, TWEENY_CHANNEL_OUT);
t.Variable(id, "y", 400, 1).SetEase(TWEENY_EASE_ELASTIC, TWEENY_CHANNEL_OUT);
```

## Parallel Execution

Run steps simultaneously:

```js
t.ParallelBegin();
t.Variable(id, "x", 300, 1);
t.Variable(id, "y", 400, 1);
t.ParallelEnd();
```

## Loops & Callbacks

```js
t.Variable(id, "x", 300, 1);
t.Variable(id, "x", 100, 1);
t.SetLoops(3).OnFinished(function() {
    show_debug_message("Animation complete!");
});
```

## Playback Control

```js
t.Pause();
t.Play();
t.Skip();   // Jump to end
t.Stop();   // Pause and reset to beginning
t.Destroy();
```
