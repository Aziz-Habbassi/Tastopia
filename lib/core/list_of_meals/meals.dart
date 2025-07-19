import 'package:tastopia/core/models/meal/meal_model.dart';

abstract class Meals {
  static final List<MealModel> meals = [
    MealModel(
      imageUrl: "assets/images/hamburger.png",
      title: "Hamburger",
      description: "ground beef, a hamburger bun,tomato, onion, and cheese",
      backgroundVideoUrl: "assets/videos/burger.mp4",
      ingredients:
          '1 lb ground beef (80/20)\n1 tsp salt\n½ tsp black pepper\n¼ tsp garlic powder\n¼ tsp onion powder\n1 Tbsp Worcestershire sauce\n4 hamburger buns\n4 slices of cheese (optional)\nLettuce\nTomato\nRed onion\nPickles\nKetchup\nMustard\nMayonnaise',
      difficulty: 'Medium',
      tutorialUrl: "https://www.youtube.com/watch?v=tuDbSVyClzI",
      time: 25,
      calories: 450,
    ),
    MealModel(
      imageUrl: "assets/images/sushi.png",
      title: "Sushi",
      description:
          "Japanese dish consisting of vinegared rice combined with various ingredients like seafood",
      backgroundVideoUrl: "assets/videos/sushi.mp4",
      ingredients:
          '2 cups sushi rice\n2.5 cups water\n¼ cup rice vinegar\n2 Tbsp sugar\n1 tsp salt\n5 sheets nori\n200 g fresh sushi-grade salmon or tuna\n1 medium cucumber\n1 medium avocado\nSoy sauce (for serving)\nWasabi (for serving)\nPickled ginger (for serving)',
      difficulty: 'Medium',
      tutorialUrl: 'https://www.youtube.com/watch?v=joweUxpHaqc',
      time: 45,
      calories: 175,
    ),
    MealModel(
      title: "Caesar Salad",
      imageUrl: "assets/images/caesar_salad.png",
      description:
          "A classic Caesar salad blends crisp romaine, crunchy croutons, tangy‑savory dressing, and Parmesan in just minutes.",
      backgroundVideoUrl: "assets/videos/caesar_salad.mp4",
      ingredients:
          "Romaine lettuce\nCroutons\nParmesan cheese\nAnchovy fillets\nGarlic\nEgg yolk(s)\nDijon mustard\nLemon juice\nOlive oil\nWorcestershire sauce\nSalt\nBlack pepper",
      difficulty: "Easy",
      tutorialUrl: "https://www.youtube.com/watch?v=tkdr4jt1Qvs",
      time: 30,
      calories: 150,
    ),
    MealModel(
      title: "Stroopwafel",
      imageUrl: "assets/images/stroopwafel.png",
      description:
          "Thin waffle cookies sandwich a warm honey‑sugar caramel for a chewy, crisp Dutch treat.",
      backgroundVideoUrl: "assets/videos/stroopwafel.mp4",
      ingredients:
          "All-purpose flour\nButter\nGranulated sugar\nYeast\nMilk\nEgg\nSalt\nCinnamon\nBrown sugar\nHoney\nButter (for filling)\nVanilla extract (optional)",
      difficulty: "Medium",
      tutorialUrl: "https://www.youtube.com/watch?v=A59TGw7N8i8",
      time: 45,
      calories: 150,
    ),
    MealModel(
      title: "Ramen",
      imageUrl: "assets/images/ramen.png",
      description:
          "A savory noodle soup with rich broth, ramen noodles, and various toppings like pork, egg, and vegetables.",
      backgroundVideoUrl: "assets/videos/ramen.mp4",
      ingredients:
          "Pork bones or chicken \n Water \n Soy sauce \n Miso \n Garlic \n Ginger \n Scallions \n Ramen noodles \n Chashu pork \n Soft-boiled eggs \n Bamboo shoots \n Nori \n Green onions \n Corn \n Sesame seeds",
      difficulty: "Medium",
      tutorialUrl: "https://www.youtube.com/watch?v=TGHbePXG7Oo",
      time: 60,
      calories: 500,
    ),
    MealModel(
      title: "Tacos",
      imageUrl: "assets/images/tacos.png",
      description:
          "Grilled or sautéed chicken, served in soft tortillas with fresh toppings like salsa, cilantro, and lime.",
      backgroundVideoUrl: "assets/videos/tacos.mp4",
      ingredients:
          "Chicken breast or thighs \n Olive oil \n Lime \n Garlic \n Cumin \n Chili powder \n Paprika \n Salt \n Pepper \n Tortillas \n Salsa \n Cilantro \n Onion \n Lime wedges \n Avocado (optional) \n Sour cream (optional)",
      difficulty: "Easy",
      tutorialUrl: "https://www.youtube.com/watch?v=kvOsKDEbBQw",
      time: 40,
      calories: 250,
    ),
    MealModel(
      title: "Tiramisu",
      imageUrl: "assets/images/tiramisu.png",
      description:
          "An Italian layered dessert with coffee-soaked ladyfingers, mascarpone cream, and cocoa powder.",
      backgroundVideoUrl: "assets/videos/tiramisu.mp4",
      ingredients:
          "Mascarpone cheese \n Heavy cream \n Eggs \n Sugar \n Vanilla extract \n Ladyfingers \n Espresso \n Cocoa powder \n Dark chocolate (optional)",
      difficulty: "Easy",
      tutorialUrl: "https://www.youtube.com/watch?v=7VTtenyKRg4",
      time: 40,
      calories: 400,
    ),
  ];
}
