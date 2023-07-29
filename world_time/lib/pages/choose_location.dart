// ignore_for_file: prefer_const_constructors, avoid_print, use_build_context_synchronously

// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:world_time/models/world_time.dart';
// import 'package:';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  void initState() {
    setup();
    super.initState();
  }
  String time="loading";
    void setup()async{
    Worldtime instance=Worldtime(location: 'London', flag:'germany.png',url: 'Europe/London');
    await instance.gettime();
    // print(instance.time);
    // setState(() {
    //   time=instance.time!;
    // }
    // );
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
    });
  }

 

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 207, 132),
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("This is location page"),
        centerTitle: true,
      ),
      body: Padding(
      padding:EdgeInsets.all(50.0),
      child: Text(time),
       ),
    );
  }
}
