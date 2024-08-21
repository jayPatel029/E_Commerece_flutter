import 'package:e_commerce1/models/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce1/Widgets/widgets.dart';
import '../../models/product_model.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: category),
    );
  }

  final Category category;

  const CatalogScreen({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Product> catagoryProduct = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.15),
        itemCount: catagoryProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: catagoryProduct[index],
              widthFactor: 2.2,
            ),
          );
        },
      ),

      // ProductCard(
      //   product: Product.products[0],
      // ),
    );
  }
}
