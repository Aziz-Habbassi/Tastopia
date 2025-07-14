import 'package:tastopia/core/models/meal_model/meal_model.dart';

abstract class Meals {
  static final List<MealModel> meals = [
    MealModel(
      imageUrl: "assets/images/hamburger.png",
      title: "Hamburger",
      description: "ground beef, a hamburger bun,tomato, onion, and cheese",
      backgroundVideoUrl: "assets/videos/burger.mp4",
      ingredients:
          '1 lb ground beef (80/20)\n1 tsp salt\n½ tsp black pepper\n¼ tsp garlic powder\n¼ tsp onion powder\n1 Tbsp Worcestershire sauce\n4 hamburger buns\n4 slices of cheese (optional)\nLettuce\nTomato\nRed onion\nPickles\nKetchup\nMustard\nMayonnaise',
      diffeculty: 'Meduim',
      tutoialUrl: "https://www.youtube.com/watch?v=tuDbSVyClzI",
      time: 25,
      calories: 450,
    ),
    MealModel(
      imageUrl: "assets/images/sushi.png",
      title: "Sushi",
      description:
          "Japanese dish consisting of vinegared rice combined with various ingredients like seafood",
      backgroundVideoUrl: "assets/videos/sushi.mp4",
      ingredients:
          '2 cups sushi rice\n2.5 cups water\n¼ cup rice vinegar\n2 Tbsp sugar\n1 tsp salt\n5 sheets nori\n200 g fresh sushi-grade salmon or tuna\n1 medium cucumber\n1 medium avocado\nSoy sauce (for serving)\nWasabi (for serving)\nPickled ginger (for serving)',
      diffeculty: 'Medium',
      tutoialUrl: 'https://www.youtube.com/watch?v=joweUxpHaqc',
      time: 45,
      calories: 175,
    ),
  ];
}
