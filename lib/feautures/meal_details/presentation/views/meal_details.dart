import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/core/services/service_locator.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/infos_widget.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/ingredients_widget.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/meal_details_app_bar.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/meal_details_image.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/watch_tutorial_button.dart';

class MealDetails extends StatefulWidget {
  const MealDetails({super.key, required this.meal});
  final MealModel meal;

  @override
  State<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: MealDetailsAppBar(
        mealModel: widget.meal,
        onsaved: () {
          widget.meal.isSaved = !widget.meal.isSaved;
          final int index = getIt
              .get<Box<MealModel>>()
              .values
              .toList()
              .indexWhere((meal) => meal.title == widget.meal.title);
          getIt.get<Box<MealModel>>().putAt(index, widget.meal);
          setState(() {});
        },
      ),
      body: ListView(
        children: [
          MealDetailsImage(imageUrl: widget.meal.imageUrl),
          Text(
            widget.meal.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Poppins", fontSize: 48),
          ),
          Text(
            widget.meal.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Gt-Sectra", fontSize: 20),
          ),
          const SizedBox(height: 24),
          InfosWidget(
            time: widget.meal.time,
            calories: widget.meal.calories,
            difficulty: widget.meal.difficulty,
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
          IngredientsWidget(ingredients: widget.meal.ingredients),
          WatchTutorialButton(tutorialUrl: widget.meal.tutorialUrl),
        ],
      ),
    );
  }
}
