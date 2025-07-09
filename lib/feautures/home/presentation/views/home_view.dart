import 'package:flutter/material.dart';
import 'package:tastopia/feautures/home/presentation/widgets/background_video_player.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BackgroundVideoPlayer());
  }
}
