// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter Project",
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Providers"),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {print("this on e is clicked");},
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 7, 218, 255),
                ),
                child: Center(
                  child: Text(
                    "hey my name is eminem",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color.fromARGB(255, 210, 144, 248),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 7, 218, 255),
                ),
                child: Center(
                  child: Text(
                    "hey my name is eminem",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color.fromARGB(255, 210, 144, 248),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 7, 218, 255),
                ),
                child: Center(
                  child: Text(
                    "hey my name is eminem",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color.fromARGB(255, 210, 144, 248),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
