// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("This is loading page"),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      
      body: Column(children: [
       ElevatedButton.icon(onPressed: (){
        
       },
        icon: Icon(
          Icons.arrow_back, 
          color: Colors.green,
          size: 30.0,
        ), 
        label: Text("this is elivated button loading"),
        )
      ],
      ),
    );
  }
}