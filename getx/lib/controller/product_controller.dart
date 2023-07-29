// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:get/get.dart';
import '../model/product.dart';

class productController  extends GetxController
{
 RxList products= <Product>[].obs;
  @override
  void onInit(){
    super.onInit();
    fetchProducts();
 }  

 void fetchProducts() async{
  await Future.delayed(Duration(seconds: 1));
  var productResult=[
    Product(3,"Soap", "some linkkk", "this is description", 69.69),
    Product(5,"comb", "some linkkk", "this is description", 50.00),
    Product(8,"powder", "some linkkk", "this is description", 65.23),
    Product(56,"powder", "some linkkk", "this is description", 150.23),

  ];
  products.value=productResult;
 }
}

