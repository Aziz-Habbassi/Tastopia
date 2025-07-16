import 'package:flutter/material.dart';

import 'package:tastopia/core/widgets/custom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.curretView});

  final Widget curretView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [curretView, const CustomNavigationBar()],
      ),
    );
  }
}
