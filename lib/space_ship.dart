import 'dart:math';

import 'package:flutter/material.dart';

abstract class SpaceShip {
  Point position = Point(0, 0);
  Size size = Size(0, 0);
  String displayName = "spaceship";
  Point speed = Point(0, 0);
}

class MilleniumFalcon extends SpaceShip {
  @override
  String displayName = "MilleniumFalcon";

  MilleniumFalcon(Point position, Size size, Point speed) {
    this.position = position;
    this.size = size;
    this.speed = speed;
  }
}

class UNSCInfinity extends SpaceShip {
  @override
  String displayName = "UNSCInfinity";
  UNSCInfinity(Point position, Size size, Point speed) {
    this.position = position;
    this.size = size;
    this.speed = speed;
  }
}

class USSEnterprise extends SpaceShip {
  @override
  String displayName = "USSEnterprise";
  USSEnterprise(Point position, Size size, Point speed) {
    this.position = position;
    this.size = size;
    this.speed = speed;
  }
}

class Serenity extends SpaceShip {
  @override
  String displayName = "Serenity";
  Serenity(Point position, Size size, Point speed) {
    this.position = position;
    this.size = size;
    this.speed = speed;
  }
}

class NullShip extends SpaceShip {
  NullShape() {
    displayName = "NullShape";
  }
}
