import 'dart:io';

import 'package:artemis/util/color/color.dart';
import 'package:artemis/util/spring/use_spring_animation.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:artemis/util/spring/spring.dart';
import 'package:artemis/util/spring/spring_transition.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

part 'main2.g.dart';

final helloWorldProvider = Provider((_) => 'Hello world');

void main() {
  runApp(const ProviderScope(child: App()));
}

bool mobileOS() {
  try {
    return Platform.isAndroid || Platform.isIOS;
  } catch (e) {
    return false;
  }
}

bool desktopOS() {
  if (kIsWeb || !mobileOS()) {
    return true;
  }
  return false;
}

@hcwidget
Widget app(WidgetRef ref) {
  return const MaterialApp(
    home: Home(),
  );
}

@hcwidget
Widget home(
  WidgetRef ref,
) {
  final done = useState([false, false, false, false]);

  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(
        right:
            // 16
            0,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
        ]
            .mapIndexed(
              (index, color) => Padding(
                padding: const EdgeInsets.all(8.0),
                // child: Button3Widget(
                //   done: done,
                //   color: color,
                //   index: index,
                // ),
                child: ButtonWidget(
                  color: color,
                  done: done,
                  index: index,
                ),
              ),
            )
            .toList(),
      ),
    ),
  );
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.done,
    required this.color,
    required this.index,
  }) : super(key: key);

  final Color color;
  final int index;

  final ValueNotifier<List<bool>> done;

  @override
  Widget build(BuildContext context) {
    return Button2(
      width: 150,
      height: 150,
      color: color,
      onTap: () {
        done.value = done.value.mapIndexed((i, element) {
          if (i == index) {
            return !element;
          }
          return element;
        }).toList();
      },
      child: Center(
        child: Column(
          children: [
            const Text(
              "Hello World",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            Icon(
              done.value[index] ? Icons.check : Icons.check_box_outline_blank,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

@hwidget
Widget pressable({
  Color color = Colors.red,
  double width = 100,
  double height = 100,
}) {
  return Button(
    color: color,
    width: width,
    height: height,
    child: Box(
      // text: "Press me",
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.darken(10),
          width: 6,
        ),
      ),
      textColor: color.text(),
      width: width,
      height: height,
    ),
  );
}

@hwidget
Widget box({
  Color color = Colors.red,
  Color textColor = Colors.white,
  double width = 100,
  double height = 100,
  String? text,
  BoxDecoration? decoration,
}) {
  return Container(
    width: width,
    height: width,
    decoration: decoration,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: text != null
            ? Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            : null,
      ),
    ),
  );
}

@hcwidget
Widget button(
  WidgetRef ref, {
  double width = 100,
  double height = 100,
  Color color = Colors.red,
  Widget? child,
  bool withGradient = false,
}) {
  final spring = useState<Spring>(
    Spring(
      description: const SpringDescription(
        mass: 1,
        stiffness: 200,
        damping: 10,
      ),
    ),
  );

  final isPressed = useState(false);

  final defaultTranslation = vector.Vector3.zero();
  final hoveredTranslation = vector.Vector3(0, -3, 0);
  final pressedTranslation = vector.Vector3(0, 3, 0);

  final translation = useState(
    mobileOS() ? hoveredTranslation : defaultTranslation,
  );

  const offsetY = 7.0;

  final totalY = [offsetY, hoveredTranslation.y, pressedTranslation.y].fold(
    0.0,
    (double previousValue, double element) => previousValue + element.abs(),
  );

  final edgeColor = color.brighten(20);
  final cornerColor = color.darken(20);
  const shadowColor = Color(0xffcccccc);

  return Stack(
    children: [
      Center(
        child: SpringTransform(
          spring: spring.value,
          translation: vector.Vector3(
            (6 - translation.value.y).clamp(6 * 0.8, 6),
            (totalY - translation.value.y).clamp(totalY * 0.8, totalY * 1.15),
            0,
          ),
          suppressAnimation: isPressed.value,
          child: Box(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: shadowColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      Center(
        child: Transform.translate(
          offset: const Offset(0, offsetY),
          child: Box(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: withGradient
                  ? LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: const [0.0, 0.08, 0.92, 1.0],
                      colors: [
                        cornerColor,
                        edgeColor,
                        edgeColor,
                        cornerColor,
                      ],
                    )
                  : null,
              color: !withGradient ? color.darken(2) : null,
            ),
          ),
        ),
      ),
      Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) {
            translation.value = hoveredTranslation;
          },
          onExit: (event) {
            translation.value = defaultTranslation;
          },
          child: GestureDetector(
            onTapDown: (details) {
              // isPressed.value = true;
              translation.value = pressedTranslation;
            },
            onTapUp: (details) {
              // isPressed.value = false;
              translation.value = hoveredTranslation;
            },
            child: SpringTransform(
              spring: spring.value,
              translation: translation.value,
              suppressAnimation: !desktopOS() && isPressed.value,
              child: SizedBox(
                width: width,
                height: height,
                child: child,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

@hwidget
Widget button2({
  double width = 100,
  double height = 100,
  Color color = Colors.red,
  Widget? child,
  bool withGradient = false,
  Function? onTap,
}) {
  final spring = useState<Spring>(
    Spring(
      description: const SpringDescription(
        mass: 1,
        stiffness: 200,
        damping: 10,
      ),
    ),
  );

  final defaultTranslation = vector.Vector3.zero();
  // final hoveredTranslation = vector.Vector3(-3, -3, 0);
  // final pressedTranslation = vector.Vector3(3, 3, 0);
  final hoveredTranslation = vector.Vector3(0, -6, 0);
  final pressedTranslation = vector.Vector3(0, 6, 0);

  final translation = useState(defaultTranslation);

  final borderRadius = BorderRadius.circular(12);

  final isPressed = useState(false);

  return Stack(
    children: [
      Center(
        child: Transform.translate(
          // offset: const Offset(6, 6),
          offset: const Offset(0, 12),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: width,
            height: height,
            decoration: BoxDecoration(
              // color: color.darken(20),
              color: color.darken(30),
              borderRadius: borderRadius,
              boxShadow: isPressed.value
                  ? null
                  : [
                      BoxShadow(
                        color: color.withOpacity(0.5),
                        blurRadius: 12,
                        // spreadRadius: 5,
                      ),
                    ],
              // gradient: LinearGradient(
              //   begin: Alignment.centerLeft,
              //   end: Alignment.centerRight,
              //   stops: const [0.0, 0.08, 0.92, 1.0],
              //   colors: [
              //     color.darken(20),
              //     color.brighten(15),
              //     color.brighten(15),
              //     color.darken(20),
              //   ],
              // ),
            ),
          ),
        ),
      ),
      Center(
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                translation.value = hoveredTranslation;
              },
              onExit: (event) {
                translation.value = defaultTranslation;
              },
              child: GestureDetector(
                // onTapDown: (details) {
                //   isPressed.value = true;
                //   translation.value = pressedTranslation;
                //   onTap?.call();
                // },
                // onTapUp: (details) {
                //   isPressed.value = false;
                //   translation.value = hoveredTranslation;
                // },
                onTap: () {
                  if (isPressed.value) {
                    isPressed.value = false;
                    translation.value = hoveredTranslation;
                  } else {
                    isPressed.value = true;
                    translation.value = pressedTranslation;
                  }
                  onTap?.call();
                },
                onTapCancel: () {
                  isPressed.value = false;
                  translation.value = hoveredTranslation;
                },
                child: SpringTransform(
                  spring: spring.value,
                  translation: translation.value,
                  // suppressAnimation: translation.value == pressedTranslation,
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: borderRadius,
                      border: Border.all(
                        color: color.brighten(10),
                        width: 8,
                      ),
                    ),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

@hwidget
Widget button3({
  double width = 100,
  double height = 100,
  Color color = Colors.red,
  Widget? child,
  bool withGradient = false,
  Function? onTap,
}) {
  final spring = useState<Spring>(
    Spring(
      description: const SpringDescription(
        mass: 1,
        stiffness: 200,
        damping: 10,
      ),
    ),
  );

  final defaultTranslation = 0.0;
  final hoveredTranslation = -3.0;
  final pressedTranslation = 3.0;

  final borderRadius = BorderRadius.circular(12);

  final isPressed = useState(false);

  final springAnimationController = useSpringAnimation(defaultTranslation);
  // final springAnimation = useAnimation(springAnimationController);

  return Stack(
    children: [
      Center(
        child: Transform.translate(
          offset: const Offset(14, 14),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: borderRadius,
            ),
          ),
        ),
      ),
      Center(
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                // translation.value = hoveredTranslation;
              },
              onExit: (event) {
                // translation.value = defaultTranslation;
              },
              child: GestureDetector(
                onTapDown: (details) {
                  isPressed.value = true;

                  springAnimationController.animateWith(
                    SpringSimulation(
                      spring.value.description,
                      0,
                      10,
                      1,
                    ),
                  );
                  onTap?.call();
                },
                onTapUp: (details) {
                  isPressed.value = false;
                  springAnimationController.animateWith(
                    SpringSimulation(
                      spring.value.description,
                      10,
                      0,
                      1,
                    ),
                  );
                },
                child: Transform.translate(
                  offset: Offset(springAnimationController.value,
                      springAnimationController.value),
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: borderRadius,
                      border: Border.all(
                        color: color.brighten(10),
                        width: 8,
                      ),
                    ),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

@hwidget
Widget button4(Color color) {
  return Box(
    color: color,
  );
}
