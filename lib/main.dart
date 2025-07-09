import 'package:flutter/material.dart';
import 'package:tastopia/core/utils/app_routes.dart';

void main() {
  runApp(const Tastopia());
}

class Tastopia extends StatelessWidget {
  const Tastopia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRoutes.router);
  }
}
