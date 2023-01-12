class Furniture {
  String imageUrl;
  String name;
  double rating;
  double price;
  String description;
  String line1;
  String line2;
  String line3;

  Furniture({
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.price,
    required this.description,
    required this.line1,
    required this.line2,
    required this.line3,
  });
}

final List<Furniture> furnitures = [
  Furniture(
    imageUrl: 'assets/images/chair.png',
    name: 'Chair',
    rating: 4.8,
    price: 47.35,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    line1: "Maximum weight: up to 40kg",
    line2: "Morbi commodo hendrerit magna vel maximus.",
    line3: "Donec nec eros massa.",
  ),
  Furniture(
    imageUrl: 'assets/images/gardenFurniture.png',
    name: 'Garden Furniture',
    rating: 4.0,
    price: 99.0,
    description: "Cras imperdiet turpis quis pretium tempor.",
    line1: "Maximum weight: up to 40kg",
    line2: "Morbi commodo hendrerit magna vel maximus.",
    line3: "Donec nec eros massa.",
  ),
  Furniture(
    imageUrl: 'assets/images/mirror.png',
    name: 'Golden Leaf Mirror',
    rating: 4.6,
    price: 150,
    description: "Maecenas gravida vestibulum elit quis fringilla. ",
    line1: "Maximum weight: up to 40kg",
    line2: "Morbi commodo hendrerit magna vel maximus.",
    line3: "Donec nec eros massa.",
  ),
];
