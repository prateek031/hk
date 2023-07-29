// ignore_for_file: camel_case_types, unnecessary_null_comparison

import "package:get/get.dart";
import 'package:getx1/models/product.dart';
import 'package:getx1/services/remote_services.dart';

class productController extends GetxController {
  RxList<Product> productList = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    var products = await RemoteServices.fetchProduct();

    try {
      isLoading(true);
      if (products != null) {
        productList.addAll(products);
      } else {
        return null;
      }
    } finally {
      isLoading(false);
    }
  }
}
