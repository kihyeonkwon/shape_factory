import 'dart:math';

import 'package:flutter/material.dart';
import 'space_ship.dart';

enum ShipsEnum { milleniumFalcon, unscInfinity, ussEnterprise, serenity }

Point position = Point(0, 0);
Size size = Size(0, 0);
String displayName = "spaceship";
Point speed = Point(0, 0);

class ShipBuildContext {
  late Point position;
  late Size size;
  late Point speed;
  late ShipsEnum shipType;
}

class ShipFactory {
  /// private constructor to prevent instantiation
  ShipFactory._();

  /// main factory method
  static SpaceShip createShip(ShipBuildContext context) {
    SpaceShip result = NullShip();

    switch (context.shipType) {
      case ShipsEnum.milleniumFalcon:
        {
          result =
              MilleniumFalcon(context.position, context.size, context.speed);
        }
        break;
      case ShipsEnum.unscInfinity:
        {
          result = UNSCInfinity(context.position, context.size, context.speed);
        }
        break;
      case ShipsEnum.ussEnterprise:
        {
          result = USSEnterprise(context.position, context.size, context.speed);
        }
        break;
      case ShipsEnum.serenity:
        {
          result = Serenity(context.position, context.size, context.speed);
        }
        break;
    }

    return result;
  }
}
