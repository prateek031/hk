// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 163, 161, 13)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "this is text",
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromARGB(255, 245, 201, 8)),
              )
                  .animate()
                  .fadeIn()
                  .scale()
                  .move(delay: 800.ms, duration: 900.ms)
                  .tint(color: Color.fromARGB(255, 219, 120, 7)),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    child: Icon(Icons.navigate_before),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),



                   FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.navigate_before),
                  ),
                  SizedBox(
                    width: 20.0,),



                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.navigate_next),
                  ),

                   SizedBox(
                    width: 20.0,),
                  


                      FloatingActionButton(
                        backgroundColor: Colors.red ,
                    onPressed: () {},
                    child: Icon(Icons.navigate_next),
                  ),
                  SizedBox(
                    width: 20.0,),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
