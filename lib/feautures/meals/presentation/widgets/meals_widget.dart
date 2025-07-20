import 'package:flutter/material.dart';

class MealsWidget extends StatelessWidget {
  const MealsWidget({
    super.key,
    required this.title,
    required this.description,
    required this.isSaved,
    this.onsave,
  });
  final String title, description;
  final bool isSaved;
  final void Function()? onsave;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 240,
      width: 300,
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: const Color.fromARGB(193, 255, 255, 255),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 235, 221, 221).withValues(alpha: 0.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          Text(
            title,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 36,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onsave,
                icon: Icon(
                  Icons.bookmark,
                  size: 26,
                  color: isSaved ? Colors.amberAccent : Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
