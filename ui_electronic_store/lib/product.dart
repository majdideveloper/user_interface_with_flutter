class Product {
  final int id;
  final String name;
  final String image;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });
}

final List<Product> products = [
  Product(
      id: 1,
      name: 'Apple Watch series 6',
      image: 'images/watch.png',
      price: 648),
  Product(
      id: 2,
      name: 'Apple Airpods Max',
      image: 'images/airpodsMax.png',
      price: 270),
  Product(
      id: 3,
      name: 'MacBook Pro M1',
      image: 'images/macbook_pro.png',
      price: 648),
  Product(
      id: 4,
      name: 'Apple Airpods pro',
      image: 'images/airpods.png',
      price: 270),
  Product(
      id: 1,
      name: 'Apple Watch series 6',
      image: 'images/watch.png',
      price: 648),
  Product(
      id: 2,
      name: 'Apple Airpods Max',
      image: 'images/airpodsMax.png',
      price: 270),
  Product(
      id: 3,
      name: 'MacBook Pro M1',
      image: 'images/macbook_pro.png',
      price: 648),
  Product(
      id: 4,
      name: 'Apple Airpods pro',
      image: 'images/airpods.png',
      price: 270),
];
