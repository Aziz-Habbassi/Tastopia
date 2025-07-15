import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InfosWidget extends StatelessWidget {
  const InfosWidget({
    super.key,
    required this.time,
    required this.calories,
    required this.difficulty,
  });
  final int time, calories;
  final String difficulty;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Lottie.asset("assets/animations/timer.json", height: 48),
            Text("$time min"),
          ],
        ),
        Column(
          children: [
            Lottie.asset("assets/animations/fire.json", height: 48),
            Text("$calories kcal"),
          ],
        ),
        Column(
          children: [
            Lottie.asset("assets/animations/medium_cook.json", height: 48),
            Text(difficulty),
          ],
        ),
      ],
    );
  }
}
