// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                    onPressed: () {},
                    child: Icon(Icons.navigate_before),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.navigate_next),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}