import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/core/services/service_locator.dart';
import 'package:tastopia/feautures/search/data/manager/cubits/search_cubit/search_cubit.dart';
import 'package:tastopia/feautures/search/presentaion/widgets/item_widget.dart';

class SavedMealsGirdList extends StatelessWidget {
  const SavedMealsGirdList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchDone) {
          final List<MealModel> meals = state.searchResult
              .where((meal) => meal.isSaved)
              .toList();
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
          final List<MealModel> meals = getIt
              .get<Box<MealModel>>()
              .values
              .where((meal) => meal.isSaved == true)
              .toList();
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
        }
      },
    );
  }
}
