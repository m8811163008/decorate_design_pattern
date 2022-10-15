import 'package:decorate_design_pattern/custom_pizza_selection.dart';
import 'package:decorate_design_pattern/pizza.dart';
import 'package:decorate_design_pattern/pizza_information.dart';
import 'package:decorate_design_pattern/pizza_menu.dart';
import 'package:decorate_design_pattern/pizza_selection.dart';
import 'package:decorate_design_pattern/pizza_topping_data.dart';
import 'package:flutter/material.dart';

/// Initialises and contains the [PizzaMenu] class object to
/// retrieve the selected [Pizza] object based on the user's
/// selection in the UI.
class DecoratorExample extends StatefulWidget {
  const DecoratorExample({Key? key}) : super(key: key);

  @override
  State<DecoratorExample> createState() => _DecoratorExampleState();
}

class _DecoratorExampleState extends State<DecoratorExample> {
  final PizzaMenu pizzaMenu = PizzaMenu();

  late final Map<int, PizzaToppingData> _pizzaToppingsDataMap;
  late Pizza _pizza;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pizzaToppingsDataMap = pizzaMenu.getPizzaToppingsDataMap();
    _pizza = pizzaMenu.getPizza(0, _pizzaToppingsDataMap);
  }

  void _onSelectedIndexChanged(int? index) {
    _setSelectedIndex(index!);
    _setSelectedPizza(index);
  }

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onCustomPizzaChipSelected(int index, bool? selected) {
    _setChipSelected(index, selected!);
    _setSelectedPizza(_selectedIndex);
  }

  void _setChipSelected(int index, bool selected) {
    setState(() {
      _pizzaToppingsDataMap[index]!.setSelected(selected);
    });
  }

  void _setSelectedPizza(int index) {
    setState(() {
      _pizza = pizzaMenu.getPizza(index, _pizzaToppingsDataMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Select your pizza:',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            PizzaSelection(
              selectedIndex: _selectedIndex,
              onChanged: _onSelectedIndexChanged,
            ),
            if (_selectedIndex == 2)
              CustomPizzaSelection(
                pizzaToppingDataMap: _pizzaToppingsDataMap,
                onSelected: _onCustomPizzaChipSelected,
              ),
            PizzaInformation(
              pizza: _pizza,
            ),
          ],
        ),
      ),
    );
  }
}
