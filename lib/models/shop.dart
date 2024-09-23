import 'package:dot_comm/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  
  // product sale
  final List<Product> _shop = [

    Product(
    name: "Dress Art", 
    price: 69.69,
    description: "Discover timeless elegance with our collection of women's dress.",
    imagePath: 'assets/dress2_zara.jpeg'
    ),

    Product(
    name: "Blazers", 
    price: 139.99,
    description: "Discover timeless elegance with our collection of blazers.",
    imagePath: 'assets/blazer_zara.jpeg'
    ),

    Product(
    name: "Women's Jacket", 
    price: 89.99,
    description: "Discover timeless elegance with our collection of women's jackets.",
    imagePath: 'assets/women.jpg'
    ),

    Product(
    name: "Boy's Shirt", 
    price: 99.99,
    description: "Elevate his wardrobe with our range of boys' shirts.",
    imagePath: 'assets/child.jpg' 
    ),

    Product(
    name: "Rolex Perpetual", 
    price: 699,
    description: "Experience the epitome of luxury and precision.",
    imagePath: 'assets/rolex.jpg'
    ),

    Product(
    name: "Men's Shoe", 
    price: 129.87,
    description: "Step into sophistication and comfort with our men's shoe collection.",
    imagePath: 'assets/shoe.jpg'
    ),

    Product(
    name: "Women's Dress", 
    price: 89.99,
    description: "Discover timeless elegance with our collection of women's dress.",
    imagePath: 'assets/dress_zara.jpeg'
    ),

    Product(
    name: "Boys's T-shirt", 
    price: 89.99,
    description: "Discover timeless elegance with our collection of boy's tshirt.",
    imagePath: 'assets/tshirt_zara.jpeg'
    ),
  ];

// Cart
List<Product> _cart = [];

// get product list
List<Product> get shop => _shop;

// get user cart

List<Product> get cart => _cart;

// add item to cart
void addToCart(Product item){
  _cart.add(item);
  notifyListeners();
}

// remove item from cart
void removeFromCart(Product item) {
  _cart.remove(item);
  notifyListeners();
}
}