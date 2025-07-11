import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/feautures/home/presentation/views/home_view.dart';
import 'package:tastopia/feautures/welcome/presentation/views/welcome_view.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/ss',
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeView();
        },
      ),
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    ],
  );
}
