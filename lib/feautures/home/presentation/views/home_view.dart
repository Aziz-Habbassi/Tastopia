import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SMIBool? smiTrigger;
  void _onRiveInit(Artboard artboard) {
    final StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, "State Machine 1");
    if (controller != null) {
      artboard.addController(controller);
      smiTrigger = controller.findInput<bool>('hover') as SMIBool?;
    }
  }

  void _startAnimation() {
    if (smiTrigger != null) {
      smiTrigger!.value = !smiTrigger!.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _startAnimation,
        child: Stack(
          children: [
            RiveAnimation.asset(
              "assets/animations/new_file.riv",
              onInit: _onRiveInit,
            ),
          ],
        ),
      ),
    );
  }
}
