import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tastopia/feautures/home/presentation/widgets/background_video_player.dart';

class MealsView extends StatelessWidget {
  const MealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundVideoPlayer(videoUrl: "assets/videos/burger.mp4"),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              width: 350,
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
                    "Hamburger",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 36,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    "ground beef, a hamburger bun,tomato, onion, and cheese",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
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
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                right: 30,
                left: 30,
                top: MediaQuery.of(context).size.height * 0.6,
              ),
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
                onSubmit: () {
                  return null;
                },
                text: "Let's cook",
                outerColor: const Color.fromARGB(127, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
