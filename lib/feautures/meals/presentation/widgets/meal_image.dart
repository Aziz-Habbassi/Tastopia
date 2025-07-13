import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .26,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(180),
                offset: Offset(0, 30), // Push shadow downward
                blurRadius: 20,
                spreadRadius: -26,
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/hamburger.png",
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
