# `Tweeny()` Methods
---

&nbsp;

The core of Tweeny

&nbsp;

## `.Variable(scope, variable, target, duration)`

<!-- tabs:start -->

#### **Description**

**Returns:** A Tween struct instance

| Name       | Datatype | Purpose                               |
|------------|----------|---------------------------------------|
| event      | string   | Event you want to subscribe           |
| eventData* | any      | You can attach multiple data to event |

Subscribe the current object or struct to event and execute function code when event is emitted.

#### **Example**

```gml
t = new Tweeny(id);
t.Variable(id, "x", 200, 2);
```
<!-- tabs:end -->

## .on

`.on(event, function([...]))`

<!-- tabs:start -->

#### **Description**

**Returns:** Listener, the instance or struct

| Name     | Datatype | Purpose                                              |
|----------|----------|------------------------------------------------------|
| event    | string   | Event you want to subscribe                          |
| function | function | Function that will be executed when event is emitted |

Subscribe the current object or struct to event and execute function code when event is emitted.

!> You **SHOULD** manually unsubscribe from events using `.off()` method
when listener does not exist to prevent memory leaking! 

#### **Example**

```gml
EventicaHandler.on("mobKill", function(){
    show_debug_message("Mob is killed")
})
```

```gml
EventicaHandler.on("mobKill", function(mobName, goldCount){
    show_debug_message($"You killed {mobName} and gain {goldCount} gold")
})
```

<!-- tabs:end -->

## .once

`.once(event, function([...]))`

<!-- tabs:start -->

#### **Description**

**Returns:** Listener, the instance or struct

| Name     | Datatype | Purpose                                              |
|----------|----------|------------------------------------------------------|
| event    | string   | Event you want to subscribe                          |
| function | function | Function that will be executed when event is emitted |

The listener is invoked only the first time the event is fired, after which it is unsubscribed.

!> You **SHOULD** manually unsubscribe from events using `.off()` method when listener does not exist to prevent memory leaking!

#### **Example**

```gml
EventicaHandler.once("mobKill", function(){
    show_debug_message("Mob is killed")
})
```

```gml
EventicaHandler.once("mobKill", function(mobName, goldCount){
    show_debug_message($"You killed {mobName} and gain {goldCount} gold")
})
```

<!-- tabs:end -->

## .many

`.many(event, timesToListen, function([...]))`

<!-- tabs:start -->

#### **Description**

**Returns:** Listener, the instance or struct

| Name          | Datatype | Purpose                                              |
|---------------|----------|------------------------------------------------------|
| event         | string   | Event you want to subscribe                          |
| timesToListen | number   | How many times function need to be executed          |
| function      | function | Function that will be executed when event is emitted |

The listener is invoked only the first **n** times the event is fired, after which it is removed.

!> You **SHOULD** manually unsubscribe from events using `.off()` method when listener does not exist to prevent memory leaking!

#### **Example**

```gml
EventicaHandler.on("mobKill", 2, function(){
    show_debug_message("Mob is killed")
})
```

```gml
EventicaHandler.many("mobKill", 5, function(mobName, goldCount){
    goldEarned += goldCount
})
```

<!-- tabs:end -->

## .off

`.off(event)`

<!-- tabs:start -->

#### **Description**

**Returns:** N/A (`undefined`)

| Name  | Datatype | Purpose                            |
|-------|----------|------------------------------------|
| event | string   | Event from you want to unsubscribe |

Unsubscribe listener from event

#### **Example**

```gml
// obj_achievements_controller object clean up event

EventicaHandler.off("mobKill")
```

<!-- tabs:end -->

## .removeAllListeners

`.removeAllListeners([event])`

<!-- tabs:start -->

#### **Description**

**Returns:** N/A (`undefined`)

| Name  | Datatype | Purpose                     |
|-------|----------|-----------------------------|
| event | string   | Event you want to subscribe |

Remove desired listeners from event handler. You can remove all listeners from any event or from certain event

#### **Example**

```gml
// obj_event_handler object clean up event

EventicaHandler.removeAllListeners()
```

```gml
// obj_quests_controller object clean up event

EventicaHandler.removeAllListeners("quest")
```

<!-- tabs:end -->