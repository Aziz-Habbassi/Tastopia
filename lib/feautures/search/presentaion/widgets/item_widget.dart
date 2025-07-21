import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';

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
          mealModel.isSaved
              ? const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, right: 20),
                    child: Icon(
                      Icons.favorite_border,
                      size: 32,
                      color: Color.fromARGB(242, 255, 191, 1),
                    ),
                  ),
                )
              : const SizedBox(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                ],
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
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.local_fire_department),
                      Text(mealModel.calories.toString()),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.alarm),
                      Text("${mealModel.time} min"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
