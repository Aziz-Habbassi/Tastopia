import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tastopia/feautures/welcome/presentation/widgets/background_video_player.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.85,
              left: 25,
              right: 25,
              bottom: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),

            decoration: BoxDecoration(
              color: const Color.fromARGB(103, 158, 158, 158),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SlideAction(
              onSubmit: () {},
              text: "Go To Home",
              outerColor: const Color.fromARGB(255, 3, 255, 12),
            ),
          ),
        ],
      ),
    );
  }
}
