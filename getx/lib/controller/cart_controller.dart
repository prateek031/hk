import 'package:get/get.dart';
import '../model/product.dart';

class CartController extends GetxController{
 RxList  cartitems = <Product>[].obs;
 double get total => cartitems.fold(0,(sum,item)=>sum+item.price);
 int get count => cartitems.length;


  addToCart(Product product){
    cartitems.add( product);
    // print("this is price${product.price}");
    // print(total);
  }
}