
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:getx1/models/product.dart';
// import "package:get/get.dart";


class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.contain,
                   
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Text(
              product.name,
              maxLines: 2,
              style:
                  TextStyle(
                    fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 2),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color.fromARGB(255, 255, 213, 25),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${product.price}',
                style: TextStyle(fontSize: 25, ),
                ),
                
                IconButton.filledTonal(onPressed: (){}, icon: Icon(Icons.add_shopping_cart_outlined),
                iconSize: 25.0
                ,splashColor: Colors.amber,
                disabledColor: Colors.grey,),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}