import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/models/meal_model/meal_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/MealsDetails', extra: mealModel);
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            decoration: BoxDecoration(
              border: BoxBorder.all(
                color: const Color.fromARGB(193, 255, 255, 255),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(
                255,
                235,
                221,
                221,
              ).withValues(alpha: 0.4),
            ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(180),
                      offset: Offset(0, 30),
                      blurRadius: 20,
                      spreadRadius: -26,
                    ),
                  ],
                ),
                child: Image.asset(
                  mealModel.imageUrl,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                mealModel.title,
                style: TextStyle(
                  fontFamily: "Gt-Sectra",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
