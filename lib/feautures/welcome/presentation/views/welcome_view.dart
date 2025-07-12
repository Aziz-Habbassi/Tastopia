import 'package:flutter/material.dart';
import 'package:tastopia/feautures/welcome/presentation/widgets/background_video_player.dart';
import 'package:tastopia/feautures/welcome/presentation/widgets/custom_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundVideoPlayer(videoUrl: "assets/videos/home_video.mp4"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 62,
                  fontFamily: "GT-Sectra",
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Tastopia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 50),
              CustomButton(),
            ],
          ),
        ],
      ),
    );
  }
}
