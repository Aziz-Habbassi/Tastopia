import 'package:flutter/material.dart';
import 'package:tastopia/feautures/saved/presentation/widgets/saved_meals_app_bar.dart';

class SavedMealsView extends StatelessWidget {
  const SavedMealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverToBoxAdapter(child: SavedMealsAppBar())],
      ),
    );
  }
}
