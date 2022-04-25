import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category;
  final int price;
  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.category
});
}

List<Product> products = [
  Product(image: 'image', title: 'title', description: 'description', price: 199, category: 'phone'),
  Product(image: 'image', title: 'title', description: 'description', price: 199, category: 'phone'),
  Product(image: 'image', title: 'title', description: 'description', price: 199, category: 'phone'),
  Product(image: 'image', title: 'title', description: 'description', price: 199, category: 'phone'),
];