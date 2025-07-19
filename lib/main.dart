import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/core/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MealModelAdapter());
  final box = await Hive.openBox<MealModel>("mealsBox");
  if (box.isEmpty) {
    for (var meal in Meals.meals) {
      await box.add(meal);
    }
  }
  runApp(const Tastopia());
}

class Tastopia extends StatelessWidget {
  const Tastopia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
