import 'package:decorate_design_pattern/pizza.dart';

/// References the Pizza object and forwards requests to it via the `getDescription()` and `getPrice()`.
class PizzaDecorator extends Pizza {
  final Pizza pizza;
  PizzaDecorator(this.pizza);

  /// Forward requests to a [Pizza] object.
  @override
  String getDescription() => pizza.description;

  /// Forward requests to a [Pizza] object.
  @override
  double getPrice() => pizza.getPrice();
}
