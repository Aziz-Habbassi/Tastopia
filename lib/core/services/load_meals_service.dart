import 'package:hive_flutter/hive_flutter.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';

class LoadMealsService {
  static late List<MealModel> meals;
  static Future<void> loadMeals() async {
    final box = await Hive.openBox("mealsBox");
    if (box.isEmpty) {
      for (var meal in Meals.meals) {
        await box.add(meal);
      }
    }
  }
}
