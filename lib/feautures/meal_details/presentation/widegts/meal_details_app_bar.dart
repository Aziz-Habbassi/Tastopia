import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';

class MealDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MealDetailsAppBar({super.key, required this.mealModel, this.onsaved});
  final MealModel mealModel;
  final void Function()? onsaved;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: IconButton(
        onPressed: () {
          context.go("/MealsView");
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: const Text(
        "Let's Cook",
        style: TextStyle(fontFamily: "GT-Sectra", fontWeight: FontWeight.w600),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: onsaved,
          icon: Icon(
            Icons.bookmark,
            size: 48,
            color: mealModel.isSaved ? Colors.amberAccent : Colors.grey,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
