// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const fonclr = Color.fromARGB(255, 0, 177, 147);
  String result = " here we see change";
  @override
  Widget build(BuildContext context) {
    void changefn() async {
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        result = "done";
      });
        await Future.delayed(Duration(seconds: 3));
      setState(() {
        result = "done 1";
      });
        await Future.delayed(Duration(seconds: 1));
      setState(() {
        result = "done2";
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("This is future "),
        centerTitle: true,
        backgroundColor: fonclr,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Center(
              child: Text('$result'),
            ),
            ElevatedButton(
              onPressed: () {
                changefn();
              },
              child: Text("this is button "),
              style: ElevatedButton.styleFrom(
                backgroundColor: fonclr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
