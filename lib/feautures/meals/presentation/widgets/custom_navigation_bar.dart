import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    this.onpressedFavorites,
    this.onpressedHome,
    this.onpressedSearch,
    required this.selectedIndex,
  });
  final VoidCallback? onpressedFavorites;
  final VoidCallback? onpressedHome;
  final VoidCallback? onpressedSearch;
  final int selectedIndex;

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
          color: const Color.fromARGB(90, 255, 255, 255),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: selectedIndex == 0
                  ? Colors.amberAccent
                  : const Color.fromARGB(255, 0, 0, 0),
              highlightColor: const Color.fromARGB(100, 255, 251, 0),
              onPressed: onpressedFavorites,
              icon: Icon(Icons.favorite, size: 36),
            ),
            IconButton(
              color: selectedIndex == 1
                  ? const Color.fromARGB(255, 255, 200, 0)
                  : const Color.fromARGB(255, 0, 0, 0),
              highlightColor: const Color.fromARGB(100, 255, 251, 0),
              onPressed: onpressedHome,
              icon: Icon(Icons.home, size: 42),
            ),
            IconButton(
              color: selectedIndex == 2
                  ? Colors.amberAccent
                  : const Color.fromARGB(255, 0, 0, 0),
              highlightColor: const Color.fromARGB(69, 255, 251, 0),
              onPressed: onpressedSearch,
              icon: Icon(Icons.search, size: 36),
            ),
          ],
        ),
      ),
    );
  }
}
