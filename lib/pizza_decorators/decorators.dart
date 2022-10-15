import 'package:decorate_design_pattern/pizza_decorator.dart';

class Basil extends PizzaDecorator {
  Basil(super.pizza) {
    description = 'Basil';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n- $description';
  @override
  double getPrice() => pizza.getPrice() + 0.2;
}

class Mozzarella extends PizzaDecorator {
  Mozzarella(super.pizza) {
    description = 'Mozzarella';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n-$description';

  @override
  double getPrice() => pizza.getPrice() + 0.5;
}

class OliveOil extends PizzaDecorator {
  OliveOil(super.pizza) {
    description = 'OliveOil';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n- $description';
  @override
  double getPrice() => pizza.getPrice() + 0.1;
}

class Oregano extends PizzaDecorator {
  Oregano(super.pizza) {
    description = 'Oregano';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n- $description';
  @override
  double getPrice() => pizza.getPrice() + 0.2;
}

class Pecorino extends PizzaDecorator {
  Pecorino(super.pizza) {
    description = 'Pecorino';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n- $description';
  @override
  double getPrice() => pizza.getPrice() + 0.7;
}

class Pepperoni extends PizzaDecorator {
  Pepperoni(super.pizza) {
    description = 'Pepperoni';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n- $description';
  @override
  double getPrice() => pizza.getPrice() + 1.5;
}

class Sauce extends PizzaDecorator {
  Sauce(super.pizza) {
    description = 'Sauce';
  }
  @override
  String getDescription() => '${pizza.getDescription()}\n- $description';
  @override
  double getPrice() => pizza.getPrice() + 0.3;
}
