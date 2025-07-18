import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';
import 'package:tastopia/core/models/meal_model/meal_model.dart';
import 'package:tastopia/feautures/search/data/manager/cubits/cubit/search_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(50, 255, 255, 255),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onChanged: (value) {
          search(value, context);
        },
      ),
    );
  }

  void search(String name, BuildContext context) {
    final List<MealModel> meals = Meals.meals;
    if (name.isNotEmpty) {
      final List<MealModel> result = meals
          .where(
            (meal) => meal.title.toLowerCase().contains(name.toLowerCase()),
          )
          .toList();
      BlocProvider.of<SearchCubit>(context).search(result);
    } else {
      BlocProvider.of<SearchCubit>(context).search(meals);
    }
  }
}
