# rive_loading

[![pub package](https://img.shields.io/pub/v/rive_loading.svg)](https://pub.dartlang.org/packages/rive_loading)

Loading widget based on a Rive animation, allow you to create custom loading widgets or dialogs

## Usage

```dart
RiveLoading(
  name: 'animation.riv',
  startAnimation: 'intro',
  loopAnimation: 'circle',
  endAnimation: 'end',
);
```

`name`: path and name of the Rive animation

`until`: callback that return a future to process your initialization

`isLoading`: alternative to `until` if you want to manage loading state with a boolean

`loopAnimation`: animation name to run in loop 

`endAnimation`: animation name to run once `until` is complete or `isLoading` false

`startAnimation`: animation name to run once as start

`height`: force the height of the Rive animation, by default it take the all place available

`width`: force the width of the Rive animation, by default it take the all place available

`alignment`: alignment of the Rive animation, center by default

`onSuccess` callback called when the animation is finished and `isLoading` is false or `until` is complete

`onError` callback called `until` has failed

## Available mode

### Only one animation 
Basically you have one animation to show and then just need to stay at last frame. In order to do that only specify the `startAnimation` 

### Start and loop animation 
Your animation have an intro and a loop state, in order to do that only specify the `startAnimation` and `loopAnimation`

### End and loop animation 
Your animation have a finish and a loop state, in order to do that only specify the `endAnimation` and `loopAnimation`

### Start and end animation 
Your animation have an intro and a finish that should stay on the last frame, in order to do that only `startAnimation` and `endAnimation`

### Start, end and loop animation 
Your animation have an intro, a finish and a loop state, in order to do that specify the `startAnimation`, `endAnimation` and `loopAnimation`
