import 'package:flutter/material.dart';

extension ColorManipulation on Color {
  Color darken([int percent = 10]) {
    assert(
      0 <= percent && percent <= 100,
      'Darken percentage must be between 0 and 100',
    );

    if (percent == 0) {
      return this;
    }

    final double f = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * f).round(),
      (green * f).round(),
      (blue * f).round(),
    );
  }

  Color brighten([int percent = 10]) {
    assert(
      0 <= percent && percent <= 100,
      'Brighten percentage must be between 0 and 100',
    );

    if (percent == 0) {
      return this;
    }

    final double p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }

  /// https://stackoverflow.com/questions/15898740/how-to-convert-rgba-to-a-transparency-adjusted-hex/15898886#15898886
  Color toHex({Color backgroundColor = Colors.white}) {
    final double opacity = this.opacity;
    final double inverseOpacity = 1 - opacity;

    final int red =
        ((this.red * opacity) + (backgroundColor.red * inverseOpacity)).toInt();
    final int green =
        ((this.green * opacity) + (backgroundColor.green * inverseOpacity))
            .toInt();
    final int blue =
        ((this.blue * opacity) + (backgroundColor.blue * inverseOpacity))
            .toInt();

    return Color.fromRGBO(red, green, blue, 1);
  }

  Color translucent() {
    final luminance = computeLuminance();

    if (luminance > 0.95) {
      return Colors.black;
    } else if (luminance < 0.2) {
      return Colors.white;
    } else if (luminance > 0.8) {
      return saturate(0.75).darken(10);
    } else {
      return saturate(0.75);
    }
    // return saturate(0.1);
  }

  Color saturate(double value) =>
      HSVColor.fromColor(this).withSaturation(value).toColor();

  Color text() {
    final luminance = computeLuminance();
    if (luminance > 0.95) {
      return Colors.black;
    } else if (luminance < 0.2) {
      return Colors.white;
    } else {
      return saturate(1).darken(25);
    }
  }

  Color splash() {
    final luminance = computeLuminance();
    if (luminance > 0.95) {
      return Colors.black;
    } else if (luminance < 0.2) {
      return Colors.white;
    } else {
      return saturate(0.1);
    }
    // return computeLuminance() > 0.9 ? text() : saturate(1);
  }
}
