import 'dart:math';

import 'package:flutter/material.dart';

Color generateRandomColor() {
  final List<Color> colors = [
    Colors.red.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
  ];

  return colors[Random().nextInt(colors.length)];
}
