import 'package:flutter/material.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/custom_navigation_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [CustomNavigationBar(selectedIndex: 2)],
      ),
    );
  }
}
