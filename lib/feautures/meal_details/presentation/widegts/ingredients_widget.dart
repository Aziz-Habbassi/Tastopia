import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 255, 255, 255),
        borderRadius: BorderRadius.circular(18),
        border: BoxBorder.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 3,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15),

      child: Column(
        children: [
          Text(
            "1 lb ground beef (80/20)\n1 tsp salt\n½ tsp black pepper\n¼ tsp garlic powder\n¼ tsp onion powder\n1 Tbsp Worcestershire sauce\n4 hamburger buns\n4 slices of cheese (optional)\nLettuce\nTomato\nRed onion\nPickles\nKetchup\nMustard\nMayonnaise",
            style: TextStyle(
              fontFamily: "Gt-Sectra",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
