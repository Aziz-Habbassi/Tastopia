class MealModel {
  final String imageUrl,
      title,
      description,
      backgroundVideoUrl,
      ingredients,
      difficulty,
      tutoialUrl;
  final int time, calories;

  MealModel({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.backgroundVideoUrl,
    required this.ingredients,
    required this.difficulty,
    required this.tutoialUrl,
    required this.time,
    required this.calories,
  });
}
