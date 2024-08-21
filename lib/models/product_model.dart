

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product({required this.name, required this.category, required this.imgUrl,
  required this.price, required this.isRecommended,
      required this.isPopular});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, category, imgUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        name: 'Soft Drink 1',
        category: 'Soft Drinks',
        imgUrl : 'https://images.pexels.com/photos/12040253/pexels-photo-12040253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        price: 50.00,
        isRecommended: true,
        isPopular: false,
    ),
    Product(
      name: 'Soft Drink 2',
      category: 'Soft Drinks',
      imgUrl : 'https://images.pexels.com/photos/1292294/pexels-photo-1292294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 50.00,
      isRecommended: true,
      isPopular: true,
    ),Product(
      name: 'Soft Drink 3',
      category: 'Soft Drinks',
      imgUrl : 'https://images.pexels.com/photos/764370/pexels-photo-764370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 30.00,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Smoothie 1',
      category: 'Smoothie',
      imgUrl : 'https://images.pexels.com/photos/775030/pexels-photo-775030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 80.00,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Smoothie 2',
      category: 'Smoothie',
      imgUrl : 'https://images.pexels.com/photos/3625372/pexels-photo-3625372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 100.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Smoothie 3',
      category: 'Smoothie',
      imgUrl : 'https://images.pexels.com/photos/2103945/pexels-photo-2103945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 80.00,
      isRecommended: true,
      isPopular: false,
    ),

  ];
}
