import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.1,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          border: BoxBorder.all(
            color: const Color.fromARGB(193, 255, 255, 255),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(100, 255, 255, 255),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: selectedIndex == 0
                  ? Colors.amberAccent
                  : const Color.fromARGB(255, 255, 255, 255),
              highlightColor: const Color.fromARGB(62, 255, 253, 131),
              onPressed: () {
                context.go("/SavedMealsView");
                setState(() {
                  selectedIndex = 0;
                });
              },
              icon: Icon(Icons.bookmark_sharp, size: 36),
            ),
            IconButton(
              color: selectedIndex == 1
                  ? const Color.fromARGB(255, 255, 200, 0)
                  : const Color.fromARGB(255, 255, 255, 255),
              highlightColor: const Color.fromARGB(62, 255, 253, 131),
              onPressed: () {
                context.go("/MealsView");
                setState(() {
                  selectedIndex = 1;
                });
              },
              icon: Icon(Icons.home, size: 42),
            ),
            IconButton(
              color: selectedIndex == 2
                  ? Colors.amberAccent
                  : const Color.fromARGB(255, 255, 255, 255),
              highlightColor: const Color.fromARGB(62, 255, 253, 131),
              onPressed: () {
                context.go("/SearchView");
                setState(() {
                  selectedIndex = 2;
                });
              },
              icon: Icon(Icons.search, size: 36),
            ),
          ],
        ),
      ),
    );
  }
}
