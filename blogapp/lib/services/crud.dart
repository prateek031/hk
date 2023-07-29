

import 'package:cloud_firestore/cloud_firestore.dart';
class CrudMethod{
  Future<void> addData(blogData) async{
    FirebaseFirestore.instance.collection("dets").add(blogData).catchError((e){
      return e; 
    })  ;
  }
}