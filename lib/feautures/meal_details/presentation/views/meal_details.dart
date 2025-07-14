import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go("/MealsView");
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Let's Cook together",
          style: TextStyle(
            fontFamily: "GT-Sectra",
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25,
              vertical: 50,
            ),

            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  spreadRadius: -10,
                  blurRadius: 50,
                ),
              ],
            ),
            child: Image.asset("assets/images/hamburger.png"),
          ),
          Text(
            "Hamburger",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Poppins", fontSize: 48),
          ),
          Text(
            "ground beef, a hamburger bun,tomato, onion, and cheese",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Gt-Sectra", fontSize: 20),
          ),
        ],
      ),
    );
  }
}
