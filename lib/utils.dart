import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

class Utils{
  static getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
}