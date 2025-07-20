import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/core/services/service_locator.dart';
import 'package:tastopia/feautures/search/data/manager/cubits/search_cubit/search_cubit.dart';

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
    final List<MealModel> meals = getIt.get<Box<MealModel>>().values.toList();
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
