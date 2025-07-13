import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tastopia/feautures/home/presentation/widgets/background_video_player.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/aligned_slidewidget.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/meal_image.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/meals_widget.dart';
import 'package:tastopia/feautures/meals/presentation/widgets/navigation_icon.dart';

class MealsView extends StatelessWidget {
  const MealsView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundVideoPlayer(videoUrl: "assets/videos/burger.mp4"),
          PageView.builder(
            controller: pageController,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned(
                    top: 90,
                    child: Text(
                      "$index",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
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
                      const MealsWidget(),
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
                  const MealImage(),
                  const AlignedSlidewidget(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
