import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:tastopia/feautures/meals/presentation/widgets/custom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.curretView});

  final Widget curretView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          curretView,
          CustomNavigationBar(
            onpressedHome: () => context.go("/MealsView"),
            selectedIndex: 1,
            onpressedSearch: () => context.go("/SearchView"),
          ),
        ],
      ),
    );
  }
}
