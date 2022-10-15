import 'package:decorate_design_pattern/pizza.dart';
import 'package:flutter/material.dart';

class PizzaInformation extends StatelessWidget {
  final Pizza pizza;

  const PizzaInformation({
    required this.pizza,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Pizza details:',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 12.0),
        Text(
          pizza.getDescription(),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 12.0),
        Text('Price: \$${pizza.getPrice().toStringAsFixed(2)}'),
      ],
    );
  }
}
