class Category {
  String id;
  String image;
  String type;
  int avaliablity;

  Category({
    required this.id,
    required this.image,
    required this.avaliablity,
    required this.type,
  });
}

class Model {
  String id;
  String brand;
  String model;
  String description;
  String rate;
  String image;

  Model({
    required this.id,
    required this.brand,
    required this.description,
    required this.image,
    required this.rate,
    required this.model,
  });
}

List<Category> categories = [
  Category(
    id: "0",
    image: "assets/images/c0.png",
    avaliablity: 56,
    type: "Standard",
  ),
  Category(
    id: "1",
    image: "assets/images/c1.png",
    avaliablity: 22,
    type: "Prestige",
  ),
  Category(
    id: "0",
    image: "assets/images/c2.png",
    avaliablity: 34,
    type: "SUV",
  ),
];
List<Model> models = [
  Model(
    id: "0",
    brand: "Toyota",
    description: "4-Cyl 1.5 Liter",
    image: "assets/images/m0",
    rate: "350",
    model: "Yaris iA",
  ),
  Model(
    id: "1",
    brand: "Hyndai",
    description: "6-Cyl 1.0 Liter",
    image: "assets/images/c2",
    rate: "250",
    model: "i20",
  )
];
