import 'package:flutter/material.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/infos_widget.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/ingredients_widget.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/meal_details_app_bar.dart';
import 'package:tastopia/feautures/meal_details/presentation/widegts/meal_details_image.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: const MealDetailsAppBar(),
      body: ListView(
        children: [
          const MealDetailsImage(),
          const Text(
            "Hamburger",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Poppins", fontSize: 48),
          ),
          const Text(
            "ground beef, a hamburger bun,tomato, onion, and cheese",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Gt-Sectra", fontSize: 20),
          ),
          const SizedBox(height: 24),
          const InfosWidget(),
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
          const IngredientsWidget(),
        ],
      ),
    );
  }
}
