import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/feautures/search/data/manager/cubits/cubit/search_cubit.dart';
import 'package:tastopia/feautures/search/presentaion/widgets/item_widget.dart';

class MealsGirdList extends StatelessWidget {
  const MealsGirdList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchDone) {
          final List<MealModel> meals = state.searchResult;
          return SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 30,
              crossAxisCount: 2,
            ),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return ItemWidget(mealModel: meals[index]);
            },
          );
        } else {
          final List<MealModel> meals = Meals.meals;
          return SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 30,
              crossAxisCount: 2,
            ),
            itemCount: Meals.meals.length,
            itemBuilder: (context, index) {
              return ItemWidget(mealModel: meals[index]);
            },
          );
        }
      },
    );
  }
}
