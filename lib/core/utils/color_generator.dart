import 'dart:math';
import 'package:flutter/material.dart';


class ColorGenerator {
  factory ColorGenerator() => _instance;
  ColorGenerator._internal();

  static final ColorGenerator _instance = ColorGenerator._internal();

  final Random _random = Random();
  Color generate() {
    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }
}


