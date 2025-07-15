import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/models/meal_model/meal_model.dart';
import 'package:tastopia/feautures/meal_details/presentation/views/meal_details.dart';
import 'package:tastopia/feautures/meals/presentation/views/meals_view.dart';
import 'package:tastopia/feautures/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/MealsView',
        builder: (BuildContext context, GoRouterState state) {
          return const MealsView();
        },
      ),
      GoRoute(
        path: '/MealsDetails',
        builder: (BuildContext context, GoRouterState state) {
          return MealDetails(meal: state.extra as MealModel);
        },
      ),
    ],
  );
}
