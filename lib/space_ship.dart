import 'dart:math';

import 'package:flutter/material.dart';

abstract class SpaceShip {
  Point position = Point(0, 0);
  Size size = Size(0, 0);
  String displayName = "spaceship";
  double speed = 0.0;
}

class MilleniumFalcon extends SpaceShip {}
