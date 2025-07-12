import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tastopia/feautures/welcome/presentation/widgets/background_video_player.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundVideoPlayer(videoUrl: "assets/videos/home_video.mp4"),
          Positioned(
            bottom: 200,
            child: GestureDetector(
              onTap: () {
                context.go("/HomeView");
              },
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 300,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 8, 241, 0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 179, 6),
                      spreadRadius: 20,
                      blurRadius: 25,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Start Cooking",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
