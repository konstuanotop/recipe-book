class RecipeDto {
  RecipeDto({
    required this.id,
    required this.name,
    required this.cookingTime,
    required this.instruction,
    required this.category,
    required this.ingredients,
    this.img,
  });

  factory RecipeDto.fromJson(Map<String, dynamic> json) => RecipeDto(
    id: json['id'].toString(),
    name: json['name'] as String? ?? '',
    cookingTime: json['cookingTime'] as String? ?? '',
    instruction: json['instruction'] as String? ?? '',
    category: json['category'] as String? ?? '',
    ingredients: json['ingredients'] as String? ?? '',
    img: json['img'] as String?,
  );

  final String id;
  final String name;
  final String cookingTime;
  final String instruction;
  final String category;
  final String ingredients;
  final String? img;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'cookingTime': cookingTime,
    'instruction': instruction,
    'category': category,
    'ingredients': ingredients,
    'img': img,
  };
}
