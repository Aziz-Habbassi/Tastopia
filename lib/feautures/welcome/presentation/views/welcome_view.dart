import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tastopia/feautures/welcome/presentation/widgets/background_video_player.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundVideoPlayer(videoUrl: "assets/videos/home_video.mp4"),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.9,
              left: 25,
              right: 25,
              bottom: 20,
            ),
            padding: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 3, 255, 12),
                  spreadRadius: 5,
                  blurRadius: 50,
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: SlideAction(
              onSubmit: () {
                context.go("/HomeView");
                return null;
              },
              text: "Go To Home",
              outerColor: const Color.fromARGB(255, 3, 255, 12),
            ),
          ),
        ],
      ),
    );
  }
}
