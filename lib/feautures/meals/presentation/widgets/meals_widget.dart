import 'package:flutter/material.dart';

class MealsWidget extends StatelessWidget {
  const MealsWidget({
    super.key,
    required this.title,
    required this.description,
  });
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          border: BoxBorder.all(
            color: const Color.fromARGB(193, 255, 255, 255),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(
            255,
            235,
            221,
            221,
          ).withValues(alpha: 0.4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 36,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
