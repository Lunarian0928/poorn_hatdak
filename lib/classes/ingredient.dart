class Ingredient {
  final String imgName, name, origin;
  final int price;

  const Ingredient({
    required this.imgName,
    required this.name,
    this.origin = '국내산',
    this.price = 0,
  });

  String getImgName() {
    return imgName;
  }

  String getName() {
    return name;
  }

  String getOrigin() {
    return origin;
  }

  int getPrice() {
    return price;
  }
}
