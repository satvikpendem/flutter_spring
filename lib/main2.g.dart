// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main2.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context, WidgetRef _ref) => app(_ref);
}

class Home extends HookConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context, WidgetRef _ref) => home(_ref);
}

class Pressable extends HookWidget {
  const Pressable(
      {Key? key, this.color = Colors.red, this.width = 100, this.height = 100})
      : super(key: key);

  final Color color;

  final double width;

  final double height;

  @override
  Widget build(BuildContext _context) =>
      pressable(color: color, width: width, height: height);
}

class Box extends HookWidget {
  const Box(
      {Key? key,
      this.color = Colors.red,
      this.textColor = Colors.white,
      this.width = 100,
      this.height = 100,
      this.text,
      this.decoration})
      : super(key: key);

  final Color color;

  final Color textColor;

  final double width;

  final double height;

  final String? text;

  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext _context) => box(
      color: color,
      textColor: textColor,
      width: width,
      height: height,
      text: text,
      decoration: decoration);
}

class Button extends HookConsumerWidget {
  const Button(
      {Key? key,
      this.width = 100,
      this.height = 100,
      this.color = Colors.red,
      this.child,
      this.withGradient = false})
      : super(key: key);

  final double width;

  final double height;

  final Color color;

  final Widget? child;

  final bool withGradient;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) => button(_ref,
      width: width,
      height: height,
      color: color,
      child: child,
      withGradient: withGradient);
}

class Button2 extends HookWidget {
  const Button2(
      {Key? key,
      this.width = 100,
      this.height = 100,
      this.color = Colors.red,
      this.child,
      this.withGradient = false,
      this.onTap})
      : super(key: key);

  final double width;

  final double height;

  final Color color;

  final Widget? child;

  final bool withGradient;

  final Function? onTap;

  @override
  Widget build(BuildContext _context) => button2(
      width: width,
      height: height,
      color: color,
      child: child,
      withGradient: withGradient,
      onTap: onTap);
}

class Button3 extends HookWidget {
  const Button3(
      {Key? key,
      this.width = 100,
      this.height = 100,
      this.color = Colors.red,
      this.child,
      this.withGradient = false,
      this.onTap})
      : super(key: key);

  final double width;

  final double height;

  final Color color;

  final Widget? child;

  final bool withGradient;

  final Function? onTap;

  @override
  Widget build(BuildContext _context) => button3(
      width: width,
      height: height,
      color: color,
      child: child,
      withGradient: withGradient,
      onTap: onTap);
}

class Button4 extends HookWidget {
  const Button4(this.color, {Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext _context) => button4(color);
}
