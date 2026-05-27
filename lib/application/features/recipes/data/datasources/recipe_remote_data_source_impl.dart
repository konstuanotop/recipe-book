import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:recipe_book/application/features/recipes/data/dto/recipe_dto.dart';

class RecipeRemoteDataSourceImpl {
  RecipeRemoteDataSourceImpl(this._client);

  final http.Client _client;
  static const String _baseUrl = 'https://31fa64783499a5b6.mokky.dev';
  static const Duration _timeout = Duration(seconds: 60);

  Future<List<RecipeDto>> getRecipes() async {
    final response = await _client
        .get(Uri.parse('$_baseUrl/recipes'))
        .timeout(_timeout);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => RecipeDto.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load recipes: ${response.statusCode}');
    }
  }
}
