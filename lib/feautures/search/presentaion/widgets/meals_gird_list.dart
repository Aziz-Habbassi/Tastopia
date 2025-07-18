import 'package:flutter/material.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';

class MealsGirdList extends StatelessWidget {
  const MealsGirdList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 30,
        crossAxisCount: 2,
      ),
      itemCount: Meals.meals.length,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
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
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(180),
                        offset: Offset(0, 30),
                        blurRadius: 20,
                        spreadRadius: -26,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    Meals.meals[index].imageUrl,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  Meals.meals[index].title,
                  style: TextStyle(
                    fontFamily: "Gt-Sectra",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
