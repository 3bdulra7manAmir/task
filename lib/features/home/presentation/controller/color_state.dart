import 'package:flutter/material.dart';


abstract class ColorState {
  const ColorState();
}

class ColorInitial extends ColorState {
  const ColorInitial();
}


class ColorLoading extends ColorState {
  const ColorLoading();
}

class ColorChanged extends ColorState {
  const ColorChanged(this.color);
  final Color color;
}

class ColorFailure extends ColorState {
  const ColorFailure(this.message);
  final String message;
}
