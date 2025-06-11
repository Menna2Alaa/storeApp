import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/pages/update_product_page.dart';

class CustomeCard extends StatelessWidget {
  CustomeCard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Colors.grey.withValues(),
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                UpdateProductPage.id,
                arguments: product,
              );
            },
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          r'$'
                          '${product.price.toString()}',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 54.5),
                        Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 55,
          top: -60,
          child: Image.network(product.image, height: 100, width: 100),
        ),
      ],
    );
  }
}
