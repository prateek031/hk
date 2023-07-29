// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx1/controller/product_controller.dart';
import 'package:getx1/pages/cartpage.dart';
import 'package:getx1/widgets/tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final productController productcontroller = Get.put(productController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[700],
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey[800],
           
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey[800],
            ),
            onPressed: () {
              Get.to(()=>CartPage());
            },
          )
        ],
        title: Text(
          "Get X",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 241, 115, 11),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "E-Kart",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromARGB(255, 241, 115, 11),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.view_list_rounded,
                        color: Color.fromARGB(255, 241, 115, 11),
                        size: 30.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.grid_view,
                        color: Color.fromARGB(255, 241, 115, 11),
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () {
                  if(productcontroller.isLoading.value) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return AlignedGridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    itemCount: productcontroller.productList.length,
                    itemBuilder: (context, index) {
                      return ProductTile(productcontroller.productList[index]);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
