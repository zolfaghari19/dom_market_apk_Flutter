import 'package:flutter/material.dart';

class ProductModel {
  final String title;
  final String description;
  final String image;

  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<ProductModel> all = [
  ProductModel(
    title: "Nike Air Max 2025",
    description:
        "Discover unmatched comfort with Nike’s latest innovation.Designed for all-day wear, it supports your every step.Breathable materials keep your feet cool and dry.Perfect for running, training, or everyday style.Experience the future of footwear — only from Nike.",
    image: 'assets/posts/post4.jpg',
    review: "(420 Reviews)",
    seller: "Nike Official",
    price: 749.0,
    colors: [Colors.black],
    category: "Shoes",
    rate: 4.9,
    quantity: 1,
  ),

  ProductModel(
  title: "L'Oréal Revitalift Day Cream",
  description:
      "Experience visibly firmer and smoother skin with L'Oréal Revitalift. This anti-aging day cream is enriched with Pro-Retinol and Centella Asiatica to reduce wrinkles and boost skin elasticity. Dermatologically tested and suitable for daily use, it hydrates deeply and revives your skin’s youthful glow.",
  image: 'assets/posts/post8.png',
  review: "(420 Reviews)",
  seller: "L'Oréal Paris Official",
  price: 199.0,
  colors: [Colors.pinkAccent],
  category: "Beauty",
  rate: 4.9,
  quantity: 1,
  ),
  ProductModel(
    title: "Levi's Denim Jacket",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post6.jpg',
    review: "(275 Reviews)",
    seller: "Levi's",
    price: 399.0,
    colors: [Colors.blue, Colors.grey],
    category: "Clothing",
    rate: 4.7,
    quantity: 1,
  ),
  ProductModel(
    title: "Rolex Submariner",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post2.jpg',
    review: "(198 Reviews)",
    seller: "Rolex Store",
    price: 5299.0,
    colors: [Colors.black],
    category: "Watches",
    rate: 4.9,
    quantity: 1,
  ),
  ProductModel(
    title: "Ray-Ban Aviator Sunglasses",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post3.jpg',
    review: "(640 Reviews)",
    seller: "Ray-Ban",
    price: 229.0,
    colors: [Colors.black, Colors.brown, Colors.purple],
    category: "Accessories",
    rate: 4.6,
    quantity: 1,
  ),
  ProductModel(
    title: "Adidas Sports Hat",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post1.jpg',
    review: "(110 Reviews)",
    seller: "Adidas",
    price: 129.0,
    colors: [Colors.black, Colors.greenAccent, Colors.pink],
    category: "Accessories",
    rate: 4.5,
    quantity: 1,
  ),
  ProductModel(
    title: "Gucci Custom T-Shirt",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/images/coustom.png',
    review: "(330 Reviews)",
    seller: "Gucci",
    price: 899.0,
    colors: [Colors.cyan, Colors.green, Colors.red],
    category: "Clothing",
    rate: 4.8,
    quantity: 1,
  ),
];

final List<ProductModel> shoes = [
  ProductModel(
    title: "Nike Air Max 2025",
    description:
        "Discover unmatched comfort with Nike’s latest innovation.Designed for all-day wear, it supports your every step.Breathable materials keep your feet cool and dry.Perfect for running, training, or everyday style.Experience the future of footwear — only from Nike.",
    image: 'assets/posts/post4.jpg',
    review: "(420 Reviews)",
    seller: "Nike Official",
    price: 749.0,
    colors: [Colors.black],
    category: "Shoes",
    rate: 4.9,
    quantity: 1,
  ),
];
final List<ProductModel> beauty = [
  ProductModel(
    title: "Nike Air Max 2025",
    description:
        "Discover unmatched comfort with Nike’s latest innovation.Designed for all-day wear, it supports your every step.Breathable materials keep your feet cool and dry.Perfect for running, training, or everyday style.Experience the future of footwear — only from Nike.",
    image: 'assets/posts/post8.png',
    review: "(420 Reviews)",
    seller: "Nike Official",
    price: 749.0,
    colors: [Colors.black],
    category: "Shoes",
    rate: 4.9,
    quantity: 1,
  ),
];
final List<ProductModel> jacket = [
  ProductModel(
    title: "Levi's Denim Jacket",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post6.jpg',
    review: "(275 Reviews)",
    seller: "Levi's",
    price: 399.0,
    colors: [Colors.blue, Colors.grey],
    category: "Clothing",
    rate: 4.7,
    quantity: 1,
  ),
];
final List<ProductModel> hat = [
  ProductModel(
    title: "Adidas Sports Hat",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post1.jpg',
    review: "(110 Reviews)",
    seller: "Adidas",
    price: 129.0,
    colors: [Colors.black, Colors.greenAccent, Colors.pink],
    category: "Accessories",
    rate: 4.5,
    quantity: 1,
  ),
];

final List<ProductModel> watch = [
  ProductModel(
    title: "Rolex Submariner",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/posts/post2.jpg',
    review: "(198 Reviews)",
    seller: "Rolex Store",
    price: 5299.0,
    colors: [Colors.black],
    category: "Watches",
    rate: 4.9,
    quantity: 1,
  ),
];
final List<ProductModel> coustom = [
  ProductModel(
    title: "Gucci Custom T-Shirt",
    description:
        "Elevate your everyday style with this classic denim jacket.Timeless design that pairs perfectly with any outfit.Crafted from durable, high-quality fabric for long-lasting wear.Ideal for layering in every season — spring to fall.Add a cool, casual edge to your wardrobe effortlessly.",
    image: 'assets/images/coustom.png',
    review: "(330 Reviews)",
    seller: "Gucci",
    price: 899.0,
    colors: [Colors.cyan, Colors.green, Colors.red],
    category: "Clothing",
    rate: 4.8,
    quantity: 1,
  ),
];
