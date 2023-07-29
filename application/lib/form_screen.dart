// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:application/validation.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 252, 158),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(179, 22, 139, 6),
        title: Text("Streams & RxDart"),
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            StreamBuilder(
              stream: valadation.email,
              builder: (context, constraints) => TextField(
                onChanged: (val) => valadation.sinkEmail.add(val),
                decoration: InputDecoration(
                    hintText: 'Enter the email',
                    errorText: constraints.hasError
                        ? constraints.error.toString()
                        : null),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            StreamBuilder(
              stream: valadation.message,
              builder: (context, constraints) => TextField(
                onChanged: (val) => valadation.sinkmessage.add(val),
                decoration: InputDecoration(
                    hintText: 'Type Your message here',
                    errorText: constraints.hasError
                        ? constraints.error.toString()
                        : null),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            StreamBuilder(
              stream: valadation.submiValadition,
              builder: (context, constraints) => ElevatedButton(
                onPressed: constraints.data != true ? () {} : () {},
                child: Text("tap to subscribe"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: constraints.data != true
                      ? Colors.green[100]
                      : Color.fromARGB(255, 0, 134, 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
