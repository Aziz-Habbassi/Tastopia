import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WatchTutorialButton extends StatelessWidget {
  const WatchTutorialButton({super.key, required this.tutorialUrl});
  final String tutorialUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(tutorialUrl));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 255, 255, 255),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.smart_display,
              size: 48,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            const SizedBox(width: 16),
            Text(
              "Watch Tutorial",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: "Gt-Sectra",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
