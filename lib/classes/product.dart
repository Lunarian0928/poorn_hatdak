import 'nutrient.dart';
import 'ingredient.dart';

class Product {
  final String imgName, itemName;
  final double reviewScore;
  final int reviewNum, price;
  final Nutrient nutrient;
  final String title, subtitle, body, body1, body2;
  final List<Ingredient> ingredientData;
  final List<String> recipe;

  Product({
    required this.imgName,
    required this.itemName,
    required this.reviewScore,
    required this.reviewNum,
    required this.price,
    required this.nutrient,
    this.title = '',
    this.subtitle = '',
    this.body = '',
    this.body1 = '',
    this.body2 = '',
    this.ingredientData = const [],
    this.recipe = const [],
  });

  String getImgName() {
    return imgName;
  }

  String getItemName() {
    return itemName;
  }

  double getReviewScore() {
    return reviewScore;
  }

  int getPrice() {
    return price;
  }

  int getReviewNum() {
    return reviewNum;
  }

  Nutrient getNutrient() {
    return nutrient;
  }

  String getTitle() {
    return title;
  }

  String getSubtitle() {
    return subtitle;
  }

  String getBody() {
    return body;
  }

  String getBody1() {
    return body1;
  }

  String getBody2() {
    return body2;
  }

  List<Ingredient> getIngredientData() {
    return ingredientData;
  }

  List<String> getRecipe() {
    return recipe;
  }
}
