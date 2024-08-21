import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';


class Category extends Equatable {

  final String name;
  final String imageUrl;

  const Category( {
    required this.name, required this.imageUrl,
});

  @override
  List<Object?> get props => [name, imageUrl];
  static List<Category> categories = [
    Category(name:  'Smoothie',
        imageUrl: 'https://images.pexels.com/photos/4753650/pexels-photo-4753650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    ),
    Category(name: 'Soft Drinks',
        imageUrl: 'https://images.pexels.com/photos/50593/coca-cola-cold-drink-soft-drink-coke-50593.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    ),
    Category(name: 'Water',
        imageUrl: 'https://images.pexels.com/photos/416528/pexels-photo-416528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
  ];
}