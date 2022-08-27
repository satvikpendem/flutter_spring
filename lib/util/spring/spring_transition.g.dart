// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spring_transition.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// Container that can use [SpringSimulation]s for [Transform]s
///
/// [spring]: An optional [Spring] can be passed in
///
/// [scaleInitialValue]: Value to start the scale at, generally set to 1
///
/// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
///
/// [child]: The child to scale
///
/// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
/// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
/// their interaction and the actual movement of the Widget on-screen.
///
/// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
class SpringTransition extends HookWidget {
  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  const SpringTransition(
      {required Key key,
      required this.child,
      this.spring,
      this.initialScale = 1,
      this.finalScale = 1,
      this.toX = 0,
      this.toY = 0,
      this.suppressAnimation = false,
      this.onTapDown,
      this.onTapUp,
      this.onTapCancel,
      this.onLongPressStart,
      this.onLongPressEnd,
      this.onDragStart,
      this.onDragUpdate,
      this.onDragEnd,
      this.onDragCancel})
      : super(key: key);

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final Widget child;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final Spring? spring;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final double initialScale;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final double finalScale;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final double toX;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final double toY;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final bool suppressAnimation;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(TapDownDetails)? onTapDown;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(TapUpDetails)? onTapUp;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function()? onTapCancel;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(LongPressStartDetails)? onLongPressStart;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(LongPressEndDetails)? onLongPressEnd;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(DragStartDetails)? onDragStart;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(DragUpdateDetails)? onDragUpdate;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function(DragEndDetails)? onDragEnd;

  /// Container that can use [SpringSimulation]s for [Transform]s
  ///
  /// [spring]: An optional [Spring] can be passed in
  ///
  /// [scaleInitialValue]: Value to start the scale at, generally set to 1
  ///
  /// [scaleFinalValue]: Value to finish scaling at. This can be less than the [initialScale] if desired
  ///
  /// [child]: The child to scale
  ///
  /// [suppressAnimation]: Whether to stop the default [Spring] animation and just use a zero [Duration] linear [Curve]
  /// This can be useful when dragging a [Widget] that uses this hook, as without this, the user faces lag between
  /// their interaction and the actual movement of the Widget on-screen.
  ///
  /// The gesture functions can be passed in for whichever gestures are desired to have the scale property on
  final void Function()? onDragCancel;

  @override
  Widget build(BuildContext _context) => springTransition(key!,
      child: child,
      spring: spring,
      initialScale: initialScale,
      finalScale: finalScale,
      toX: toX,
      toY: toY,
      suppressAnimation: suppressAnimation,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onLongPressStart: onLongPressStart,
      onLongPressEnd: onLongPressEnd,
      onDragStart: onDragStart,
      onDragUpdate: onDragUpdate,
      onDragEnd: onDragEnd,
      onDragCancel: onDragCancel);
}

class SpringScale extends HookWidget {
  const SpringScale(
      {Key? key,
      required this.scale,
      required this.child,
      this.alignment = Alignment.center})
      : super(key: key);

  final double scale;

  final Widget child;

  final Alignment alignment;

  @override
  Widget build(BuildContext _context) =>
      springScale(scale: scale, child: child, alignment: alignment);
}

class SpringTransform extends HookWidget {
  const SpringTransform(
      {Key? key,
      this.spring,
      this.scale,
      this.rotationAxis,
      this.rotationAngle,
      this.translation,
      this.child,
      this.alignment = Alignment.center,
      this.suppressAnimation = false})
      : super(key: key);

  final Spring? spring;

  final double? scale;

  final Vector3? rotationAxis;

  final double? rotationAngle;

  final Vector3? translation;

  final Widget? child;

  final Alignment alignment;

  final bool suppressAnimation;

  @override
  Widget build(BuildContext _context) => springTransform(
      spring: spring,
      scale: scale,
      rotationAxis: rotationAxis,
      rotationAngle: rotationAngle,
      translation: translation,
      child: child,
      alignment: alignment,
      suppressAnimation: suppressAnimation);
}
