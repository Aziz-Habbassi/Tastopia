import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InfosWidget extends StatelessWidget {
  const InfosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Lottie.asset("assets/animations/timer.json", height: 48),
            Text("25 min"),
          ],
        ),
        Column(
          children: [
            Lottie.asset("assets/animations/fire.json", height: 48),
            Text("450 kcal"),
          ],
        ),
        Column(
          children: [
            Lottie.asset("assets/animations/medium_cook.json", height: 48),
            Text("Medium "),
          ],
        ),
      ],
    );
  }
}
