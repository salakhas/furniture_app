class Furniture {
  String imageUrl;
  String name;
  double rating;
  double price;

  Furniture({
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.price,
  });
}

final List<Furniture> furnitures = [
  Furniture(
    imageUrl: 'assets/images/chair.png',
    name: 'Chair',
    rating: 4.8,
    price: 47.35,
  ),
  Furniture(
    imageUrl: 'assets/images/gardenFurniture.png',
    name: 'Garden Furniture',
    rating: 4.0,
    price: 99.0,
  ),
  Furniture(
    imageUrl: 'assets/images/mirror.png',
    name: 'Golden Leaf Mirror',
    rating: 4.6,
    price: 150,
  ),
];
