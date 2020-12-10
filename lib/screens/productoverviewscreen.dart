import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/product_item.dart';

import '../modules/products.dart';
import 'package:flutter/widgets.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red shirt',
      description: 'a red pretty shirt',
      price: 30,
      imageUrl: 'https://5.imimg.com/data5/OX/IC/MY-4906124/dsc_3669-500x500.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Black shirt',
      description: 'a Blacky shirt',
      price: 35,
      imageUrl: 'https://5.imimg.com/data5/UC/IS/MY-7837511/mens-black-shirt-500x500.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),

      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
              loadedProducts[i].id,
              loadedProducts[i].title,
              loadedProducts[i].imageUrl,
            ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,

        ),
      ),
    );
  }
}
