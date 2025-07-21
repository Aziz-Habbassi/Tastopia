import 'package:flutter/material.dart';

class SavedMealsAppBar extends StatelessWidget {
  const SavedMealsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        children: [
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Saved",
                style: TextStyle(fontFamily: "Gt-Sectra", fontSize: 36),
              ),
              Text(
                "Recipes",
                style: TextStyle(
                  fontFamily: "Gt-Sectra",
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.bookmark, size: 150, color: Colors.amber),
        ],
      ),
    );
  }
}
