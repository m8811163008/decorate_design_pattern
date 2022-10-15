import 'package:flutter/foundation.dart';

/// Defines a common interface for wrappers (decorators) and wrappers objects.
abstract class Pizza {
  @protected
  late String description;

  /// returns the description of the pizza.
  String getDescription();

  /// returns the price of the pizza.
  double getPrice();
}
