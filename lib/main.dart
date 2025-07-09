import 'package:flutter/material.dart';
import 'package:tastopia/feautures/home/presentation/views/welcome_view.dart';

void main() {
  runApp(const Tastopia());
}

class Tastopia extends StatelessWidget {
  const Tastopia({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WelcomeView());
  }
}
