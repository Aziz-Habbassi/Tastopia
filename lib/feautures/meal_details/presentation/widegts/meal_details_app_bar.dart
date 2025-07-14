import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MealDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MealDetailsAppBar({super.key});

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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
