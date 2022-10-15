import 'package:decorate_design_pattern/pizza.dart';

/// Represent the component object which extends the Pizza class
/// and implements its abstract method
///
/// An object of this class (its behaviour) gets decorated by the
/// specific decorator classes.
class PizzaBase extends Pizza {
  PizzaBase(String description) {
    this.description = description;
  }
  @override
  String getDescription() => description;
  @override
  double getPrice() => 3.0;
}
