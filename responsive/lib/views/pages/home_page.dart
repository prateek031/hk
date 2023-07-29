// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive/views/wigets/card.dart';
import 'package:responsive/views/wigets/responsive_helper.dart';
import 'package:responsive/views/wigets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive App"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[200],
      ),
      body: SafeArea(
          child: ResponsiveWidget(
        mobile: ListView(
          children: [
            Center(child: cardgrad()),
            SizedBox(
              height: 20.0,
            ),
            textall()
          ],
        ),
        tab: Row(
          children: [
            cardgrad(),
            SizedBox(
              width: 20.0,
            ),
            Expanded(child: textall()),
          ],
        ),
      )),
    );
  }
}
