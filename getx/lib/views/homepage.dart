// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/cart_controller.dart';
import 'package:getx/controller/product_controller.dart';
import 'package:getx/views/secondpage.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final productcontroller = Get.put(productController());

  final cartcontroller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("E-Kart"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: GetX<productController>(
                  builder: (controller) {
                    return ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            borderOnForeground: true,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(controller.products[index].id
                                          .toString()),
                                      Text(controller
                                          .products[index].productName),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(controller
                                          .products[index].productImage),
                                      Text(controller
                                          .products[index].productDesc),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(controller.products[index].price
                                          .toString()),
                                      ElevatedButton.icon(
                                          onPressed: () {
                                           cartcontroller.addToCart(controller.products[index]);
                                          },
                                          icon: Icon(Icons.add),
                                          label: Text("Tap to Add!!"))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              // GetX<CartController>(
                
              //   builder: (controller) {
              //     return Text("The totel price is${controller.total.toStringAsFixed(2)}",style:TextStyle(
              //       fontSize: 20.0,
              //       color: Colors.white,
              //     ),);
              //   }
              // ),
              Obx((){
                return Text(cartcontroller.total.toStringAsFixed(2),
                style:TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),);
              }),


              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                  onPressed: () {
                    Get.to(() => SecondPage());
                  },
                  child: Icon(Icons.navigate_next),
                ),
                SizedBox(width: 15.0,),
                FloatingActionButton.extended(
                    backgroundColor: Color.fromARGB(255, 230, 208, 13),
                    icon: Icon(Icons.shopping_cart),
                  onPressed:(){}, 
                  label: GetX<CartController>(
                    builder: (controller) {
                      return Text(controller.count.toString());
                    }
                  ),
                  
                  )
                  ],
                )
              ),
            ],
          ),
        ),

        
      ),
    );
  }
}
