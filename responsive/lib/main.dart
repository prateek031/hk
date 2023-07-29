// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:responsive/views/pages/home_page.dart';
import 'package:responsive/views/pages/second_responsive.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "responsive app",
      // home: HomePage(),
      home: SecondResponsive(),
    );
  }
}