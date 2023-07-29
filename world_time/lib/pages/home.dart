// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text("This is a Home Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
         ElevatedButton.icon(onPressed: (){
         Navigator.pushNamed(context, '/location',);
       },
        icon: Icon(
          Icons.arrow_back, 
          color: Colors.green,
          size: 30.0,
        ), 
        label: Text("this is elivated button of home"),
        ),
       SizedBox(height: 10.0,),
       Row(
        children:<Widget> [
          Text("")
        ],
       )
      ],
      ),
    );
  }
}