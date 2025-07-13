import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({super.key, this.onpressed, required this.icon});
  final void Function()? onpressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(
        icon,
        size: 32,
        color: const Color.fromARGB(255, 235, 221, 221).withValues(alpha: 0.7),
      ),
    );
  }
}
