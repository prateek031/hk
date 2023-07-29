// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Succespage extends StatefulWidget {
  const Succespage({super.key});

  @override
  State<Succespage> createState() => _SuccespageState();
}

class _SuccespageState extends State<Succespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("asset/scsfl.gif")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
