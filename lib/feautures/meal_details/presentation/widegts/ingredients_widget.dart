import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key, required this.ingredients});
  final String ingredients;
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
            ingredients,
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
