import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';

class AlignedSlidewidget extends StatelessWidget {
  const AlignedSlidewidget({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: width * 0.7,
        margin: EdgeInsets.only(right: 30, left: 30, top: height * 0.4),
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 119, 124, 119),
              spreadRadius: 5,
              blurRadius: 50,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: SlideAction(
          sliderButtonIcon: Icon(
            FontAwesomeIcons.utensils,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          onSubmit: () {
            context.go('/MealsDetails', extra: mealModel);
            return null;
          },
          text: "Let's cook",
          innerColor: const Color.fromARGB(255, 255, 255, 255),
          outerColor: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
