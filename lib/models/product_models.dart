import 'package:ecommerce/models/category_models.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  @override
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        name: "Soft Drink",
        category: "Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1556881286-fc6915169721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        price: 20.000,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Water",
        category: "Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1624948465027-6f9b51067557?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        price: 0,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Smoothies",
        category: "Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1638176066350-89246038781f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
        price: 30.000,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Coca-Cola",
        category: "Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1534260164206-2a3a4a72891d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        price: 15.000,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Wine",
        category: "Drink",
        imageUrl:
            "https://images.unsplash.com/photo-1521512233585-c0bb78faee37?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        price: 50.000,
        isRecommended: true,
        isPopular: true),
  ];
}
