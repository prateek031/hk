// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class CartPage extends GetView {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey[800],
                    size: 30.0,
                  )),
            )
          ],
          title: Text("Cart....."),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 241, 115, 11),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AlignedGridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 15,
            crossAxisSpacing: 0,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color:Color.fromARGB(255, 255, 116, 2),
                  );
            },
          ),
        ));
  }
}
