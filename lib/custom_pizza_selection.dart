import 'package:decorate_design_pattern/pizza_topping_data.dart';
import 'package:flutter/material.dart';

class CustomPizzaSelection extends StatelessWidget {
  final Map<int, PizzaToppingData> pizzaToppingDataMap;
  final Function(int index, bool? selected) onSelected;

  const CustomPizzaSelection({
    required this.pizzaToppingDataMap,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 10.0,
      children: <Widget>[
        for (var i = 0; i < pizzaToppingDataMap.length; i++)
          i == 0
              ? ChoiceChip(
                  label: const Text(
                    'Pizza Base',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  selected: true,
                  selectedColor: Colors.black,
                  onSelected: (_) {},
                )
              : ChoiceChip(
                  label: Text(
                    pizzaToppingDataMap[i]!.label,
                    style: TextStyle(
                      color: pizzaToppingDataMap[i]!.selected
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  selected: pizzaToppingDataMap[i]!.selected,
                  selectedColor: Colors.black,
                  onSelected: (bool? selected) => onSelected(i, selected),
                ),
      ],
    );
  }
}
