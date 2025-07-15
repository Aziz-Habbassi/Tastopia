import 'package:flutter/material.dart';

class MealDetailsImage extends StatelessWidget {
  const MealDetailsImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .25,
        vertical: 50,
      ),

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255),
            spreadRadius: -10,
            blurRadius: 50,
          ),
        ],
      ),
      child: Image.asset(imageUrl),
    );
  }
}
