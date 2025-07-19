import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/core/list_of_meals/meals.dart';
import 'package:tastopia/core/models/meal/meal_model.dart';
import 'package:tastopia/feautures/splash/presentation/widgets/background_video_player.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/meal_image.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/meals_widget.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/navigation_icon.dart';

class MealsView extends StatefulWidget {
  const MealsView({super.key});
  @override
  State<MealsView> createState() => _MealsViewState();
}

class _MealsViewState extends State<MealsView> {
  int currentIndex = 0;
  final List<MealModel> meals = Meals.meals;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 600),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: BackgroundVideoPlayer(
              videoUrl: meals[currentIndex].backgroundVideoUrl,
              key: ValueKey(meals[currentIndex].backgroundVideoUrl),
            ),
          ),
          PageView.builder(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            controller: pageController,
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.go('/MealsDetails', extra: meals[index]);
                },
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NavigationIcon(
                          icon: FontAwesomeIcons.circleArrowLeft,
                          onpressed: () {
                            pageController.animateToPage(
                              index - 1,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOutCubic,
                            );
                          },
                        ),
                        MealsWidget(
                          title: meals[index].title,
                          description: meals[index].description,
                        ),
                        NavigationIcon(
                          icon: FontAwesomeIcons.circleArrowRight,
                          onpressed: () {
                            pageController.animateToPage(
                              index + 1,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOutCubic,
                            );
                          },
                        ),
                      ],
                    ),
                    MealImage(imagUrl: meals[index].imageUrl),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
