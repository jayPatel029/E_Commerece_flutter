import 'package:e_commerce1/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Wishlist extends Equatable
{
  final List<Product> products;

  const Wishlist ({this.products = const <Product>[]});
  @override
  // TODO: implement props
  List<Object?> get props => [products];

}