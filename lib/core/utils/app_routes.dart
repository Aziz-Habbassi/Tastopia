import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/models/meal_model/meal_model.dart';
import 'package:tastopia/feautures/home/presentation/views/home_view.dart';
import 'package:tastopia/feautures/meal_details/presentation/views/meal_details.dart';
import 'package:tastopia/feautures/meals/presentation/views/meals_view.dart';
import 'package:tastopia/feautures/splash/presentation/views/splash_screen.dart';
import 'package:tastopia/feautures/search/presentaion/views/search_view.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      ShellRoute(
        builder: (context, state, child) => HomeView(curretView: child),
        routes: [
          GoRoute(
            path: '/MealsView',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return const NoTransitionPage(child: MealsView());
            },
          ),

          GoRoute(
            path: '/SearchView',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return const NoTransitionPage(child: SearchView());
            },
          ),
        ],
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
