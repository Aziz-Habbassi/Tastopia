import 'package:flutter/material.dart';
import 'package:tastopia/core/services/service_locator.dart';

import 'package:tastopia/core/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const Tastopia());
}

class Tastopia extends StatelessWidget {
  const Tastopia({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
