import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;

  const ResponsiveWidget({super.key, required this.mobile, required this.tab});


  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context,dimensions) {
      if(dimensions.maxWidth<600){
        return mobile;
      }
      else{
        return tab;
      }
    },);
    
  }
}