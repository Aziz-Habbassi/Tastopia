import 'package:hive_flutter/hive_flutter.dart';

part 'meal_model.g.dart';

@HiveType(typeId: 0)
class MealModel extends HiveObject {
  @HiveField(0)
  final String imageUrl;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String backgroundVideoUrl;
  @HiveField(4)
  final String ingredients;
  @HiveField(5)
  final String difficulty;
  @HiveField(6)
  final String tutorialUrl;
  @HiveField(7)
  final int time;
  @HiveField(8)
  final int calories;
  @HiveField(9)
  bool isSaved;
  MealModel({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.backgroundVideoUrl,
    required this.ingredients,
    required this.difficulty,
    required this.tutorialUrl,
    required this.time,
    required this.calories,
    required this.isSaved,
  });
}
