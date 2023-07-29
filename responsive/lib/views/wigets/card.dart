// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

Container cardgrad()
   {
    return Container(
              height: 200,
              width: 300,
              child:Text("jckdjckdhcdhscjndjcndjshcjdc"),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: const [Colors.redAccent,Colors.blueAccent]),
                borderRadius: BorderRadius.circular(20)
              ),
          );
  }