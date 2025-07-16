import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/models/meal_model/meal_model.dart';
import 'package:tastopia/feautures/home2.0/home_view_2.dart';
import 'package:tastopia/feautures/meal_details/presentation/views/meal_details.dart';
import 'package:tastopia/feautures/meals/presentation/views/meals_view.dart';
import 'package:tastopia/feautures/home/presentation/views/home_view.dart';
import 'package:tastopia/feautures/search/presentaion/views/search_view.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      ShellRoute(
        builder: (context, state, child) => HomeView2(curretView: child),
        routes: [
          GoRoute(
            path: '/MealsView',
            builder: (BuildContext context, GoRouterState state) {
              return MealsView();
            },
          ),
          GoRoute(
            path: '/MealsDetails',
            builder: (BuildContext context, GoRouterState state) {
              return MealDetails(meal: state.extra as MealModel);
            },
          ),
          GoRoute(
            path: '/SearchView',
            builder: (BuildContext context, GoRouterState state) {
              return const SearchView();
            },
          ),
        ],
      ),
    ],
  );
}
