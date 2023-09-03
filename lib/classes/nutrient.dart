class Nutrient {
  final int calorie;

  final double carbohydrate,
      sugars,
      protein,
      fat,
      saturatedFat,
      transFat,
      cholesterol,
      natrium;

  Nutrient({
    required this.calorie,
    required this.carbohydrate,
    required this.sugars,
    required this.protein,
    required this.fat,
    required this.saturatedFat,
    required this.transFat,
    required this.cholesterol,
    required this.natrium,
  });

  int getCalorie() {
    return calorie;
  }

  double getCarbohydrate() {
    return carbohydrate;
  }

  double getSugars() {
    return sugars;
  }

  double getProtein() {
    return protein;
  }

  double getFat() {
    return fat;
  }

  double getSaturatedFat() {
    return saturatedFat;
  }

  double getTransFat() {
    return transFat;
  }

  double getCholesterol() {
    return cholesterol;
  }

  double getNatrium() {
    return natrium;
  }
}
