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

part 'main.g.dart';

final helloWorldProvider = Provider((_) => 'Hello world');

void main() {
  runApp(const ProviderScope(child: App()));
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
  return Scaffold(
    body: GridView.count(
      crossAxisCount: 2,
      children: const [
        Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
          ),
        ),
      ],
    ),
  );
}
