import 'package:flutter/material.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/infos_widget.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/ingredients_widget.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/meal_details_app_bar.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/meal_details_image.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/watch_tutorial_button.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key, required this.meal});
  final MealModel meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: const MealDetailsAppBar(),
      body: ListView(
        children: [
          MealDetailsImage(imageUrl: meal.imageUrl),
          Text(
            meal.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Poppins", fontSize: 48),
          ),
          Text(
            meal.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Gt-Sectra", fontSize: 20),
          ),
          const SizedBox(height: 24),
          InfosWidget(
            time: meal.time,
            calories: meal.calories,
            difficulty: meal.difficulty,
          ),
          const SizedBox(height: 24),
          Center(
            child: Text(
              "Ingredients",
              style: TextStyle(
                fontFamily: "Gt-Sectra",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          IngredientsWidget(ingredients: meal.ingredients),
          WatchTutorialButton(tutorialUrl: meal.tutorialUrl),
        ],
      ),
    );
  }
}
