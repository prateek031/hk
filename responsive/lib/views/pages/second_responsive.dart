// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondResponsive extends StatelessWidget {
  const SecondResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: screenWidth > 500
          ? AppBar(
            backgroundColor: Colors.black,
              title: Text(
                "this is responsive appbar",
                style: TextStyle(
                  color: Color.fromARGB(255, 233, 62, 62),
                ),
              ),
            )
          : AppBar(
            backgroundColor: Colors.black,
              title: Text(
                "this is responsive appbar",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 236, 61),
                ),
              ),
            ),
      body: LayoutBuilder(builder: (context, dimensions) {
        if (dimensions.maxWidth < 300) {
          return Center(
            child: Container(
              height: 200,
              width: 250,
              color: Colors.amberAccent,
            ),
          );
        } else if (dimensions.maxWidth < 500) {
          return Center(
            child: Container(
              height: 400,
              width: 450,
              color: Color.fromARGB(255, 255, 4, 4),
            ),
          );
        }
        if (dimensions.maxWidth < 700) {
          return Center(
            child: Container(
              height: 400,
              width: 650,
              color: Color.fromARGB(255, 51, 7, 121),
            ),
          );
        } else {
          return Center(
            child: Container(
              height: 400,
              width: 800,
              color: Color.fromARGB(255, 79, 141, 20),
            ),
          );
        }
      }),
    );
  }
}
