import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:vector_math/vector_math_64.dart';

import 'spring.dart';
import 'use_spring_animation.dart';

part 'spring_transition.g.dart';

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
@hwidget
Widget springTransition(
  Key key, {
  required Widget child,
  Spring? spring,

  /// Assume no scaling or translating as a default
  double initialScale = 1,
  double finalScale = 1,
  double toX = 0,
  double toY = 0,
  bool suppressAnimation = false,
  void Function(TapDownDetails)? onTapDown,
  void Function(TapUpDetails)? onTapUp,
  void Function()? onTapCancel,
  void Function(LongPressStartDetails)? onLongPressStart,
  void Function(LongPressEndDetails)? onLongPressEnd,
  void Function(DragStartDetails)? onDragStart,
  void Function(DragUpdateDetails)? onDragUpdate,
  void Function(DragEndDetails)? onDragEnd,
  void Function()? onDragCancel,
}) {
  /// Initialize [spring] to a default [Spring] if not provided
  spring ??= Spring();
  assert(spring.description.mass > 0, 'Mass must be greater than 0');

  /// The scale value to keep track of, starting at [initialValue]
  final ValueNotifier<double> scale = useState<double>(initialScale);

  final AnimationController x = useSpringAnimation(
    toX,
    suppressAnimation: suppressAnimation,
  );
  final AnimationController y = useSpringAnimation(
    toY,
    suppressAnimation: suppressAnimation,
  );

  return Positioned(
    key: key,
    left: x.value,
    top: y.value,
    child: GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onTapDown: (TapDownDetails details) {
        (onTapDown ??= (TapDownDetails _) {})(details);
        scale.value = finalScale;
      },
      onTapUp: (TapUpDetails details) {
        (onTapUp ??= (TapUpDetails _) {})(details);
        scale.value = initialScale;
      },
      onTapCancel: () {
        (onTapCancel ??= () {})();
        scale.value = initialScale;
      },
      onLongPressStart: (LongPressStartDetails details) {
        (onLongPressStart ??= (LongPressStartDetails _) {})(details);
        scale.value = finalScale;
      },
      onLongPressEnd: (LongPressEndDetails details) {
        (onLongPressEnd ??= (LongPressEndDetails _) {})(details);
        scale.value = initialScale;
      },
      onVerticalDragStart: (DragStartDetails details) {
        (onDragStart ?? (DragStartDetails _) {})(details);
        scale.value = finalScale;
      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        (onDragUpdate ?? (DragUpdateDetails _) {})(details);
        scale.value = finalScale;
      },
      onVerticalDragEnd: (DragEndDetails details) {
        (onDragEnd ?? (DragEndDetails _) {})(details);
        scale.value = initialScale;
      },
      onVerticalDragCancel: () {
        (onDragCancel ?? () {})();
        scale.value = initialScale;
      },
      child: SpringScale(
        scale: scale.value,
        child: child,
      ),
    ),
  );
}

@hwidget
Widget springScale({
  required double scale,
  required Widget child,
  Alignment alignment = Alignment.center,
}) {
  /// [useSpringAnimation] hook must be inside the [Widget] being rebuilt,
  /// as it uses `didUpdateHook` to understand when to rebuild and run the animation
  final AnimationController scaleController = useSpringAnimation(scale);

  return Transform(
    transform: Matrix4.identity()..scale(scaleController.value),
    alignment: alignment,
    child: child,
  );
}

@hwidget
Widget springTransform({
  Spring? spring,
  double? scale,
  Vector3? rotationAxis,
  double? rotationAngle,
  Vector3? translation,
  Widget? child,
  Alignment alignment = Alignment.center,
  bool suppressAnimation = false,
}) {
  /// [useSpringAnimation] hook must be inside the [Widget] being rebuilt,
  /// as it uses `didUpdateHook` to understand when to rebuild and run the animation
  final scaleController = useSpringAnimation(
    scale ?? 1,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );

  final rotationAxisXController = useSpringAnimation(
    rotationAxis?.x ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );
  final rotationAxisYController = useSpringAnimation(
    rotationAxis?.y ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );
  final rotationAxisZController = useSpringAnimation(
    rotationAxis?.z ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );
  final rotationAngleController = useSpringAnimation(
    rotationAngle ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );

  final translationXController = useSpringAnimation(
    translation?.x ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );
  final translationYController = useSpringAnimation(
    translation?.y ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );
  final translationZController = useSpringAnimation(
    translation?.z ?? 0,
    spring: spring,
    suppressAnimation: suppressAnimation,
  );

  return Transform(
    transform: Matrix4.compose(
      Vector3(
        translationXController.value,
        translationYController.value,
        translationZController.value,
      ),
      Quaternion.axisAngle(
        Vector3(
          rotationAxisXController.value,
          rotationAxisYController.value,
          rotationAxisZController.value,
        ),
        rotationAngleController.value,
      ),
      Vector3(
        scaleController.value,
        scaleController.value,
        scaleController.value,
      ),
    ),
    alignment: alignment,
    child: child,
  );
}
