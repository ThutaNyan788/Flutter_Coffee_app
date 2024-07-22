import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefer extends StatefulWidget {
  const CoffeePrefer({super.key});

  @override
  State<CoffeePrefer> createState() => _CoffeePreferState();
}

class _CoffeePreferState extends State<CoffeePrefer> {
  int strength = 1;
  int sugar = 0;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox(width: 50)),
            StyledButton(onPressed: incStrength, child: const Text("+"))
          ],
        ),
        Row(
          children: [
            const StyledBodyText("Sugars: "),
            if (sugar == 0) const Text("No sugars..."),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox(width: 50)),
            StyledButton(onPressed: incSugar, child: const Text("+"))
          ],
        )
      ],
    );
  }
}
