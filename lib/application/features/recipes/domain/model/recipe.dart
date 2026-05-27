import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  const Recipe({
    required this.id,
    required this.name,
    required this.cookingTime,
    required this.instruction,
    required this.category,
    required this.ingredients,
    this.img,
  });

  final String id;
  final String name;
  final Duration cookingTime;
  final String instruction;
  final String category;
  final String ingredients;
  final String? img;

  @override
  List<Object> get props => [
    id,
    name,
    cookingTime,
    instruction,
    category,
    ingredients,
    ?img,
  ];
}
