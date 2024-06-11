import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/updatedproductpage.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    super.key,
  });
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductpage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 25.0,
                  color: Colors.grey.withOpacity(0.3),
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0,
                  offset: Offset(10, 10)),
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      product.title.toString().substring(0, 8),
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' "${product.price.toString()}",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 70,
              bottom: 60,
              child: Image.network(
                product.image,
                width: 100,
                height: 100,
              )),
        ],
      ),
    );
  }
}
