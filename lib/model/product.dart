import 'package:ryc/utils/constants.dart';

class Product {
  final String name;
  final String image;

  const Product({required this.name, required this.image});
}

//List of products

final productList = [
  const Product(name: ProductName.cygor, image: 'assets/8.jpg'),
  const Product(name: ProductName.gecko, image: 'assets/9.jpg'),
  const Product(name: ProductName.littleMice, image: 'assets/10.jpg'),
  const Product(name: ProductName.alien, image: 'assets/7.jpg'),
];
