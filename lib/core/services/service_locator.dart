import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(MealModelAdapter());
  }
  final box = await Hive.openBox<MealModel>("mealsBox");
  if (box.isEmpty) {
    for (var meal in Meals.meals) {
      await box.add(meal);
    }
  }
  getIt.registerSingleton<Box<MealModel>>(box);
}
