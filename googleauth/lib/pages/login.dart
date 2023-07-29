// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googleauth/pages/login_controller.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
  final controller = Get.put(Logincontroller());
  

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Auth"),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () {
            if (controller.GoogleAccount.value == null) {
              return googlebutton();
            } else {
              return profile();
            }
          },
        ),
      ),
    );
  }
}

class googlebutton extends StatelessWidget {
  const googlebutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          side: BorderSide(color: const Color.fromARGB(255, 0, 0, 0), width: 2),
        ),
        onPressed: () {
          controller.login();
        },
        icon: Image(
          image: AssetImage(
            'asset/google.png',
          ),
          height: 30.0,
          width: 30.0,
        ),
        label: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Sign in With Google",
            style: TextStyle(fontSize: 25.0, color: Colors.black),
          ),
        ));
  }
}

class profile extends StatelessWidget {
  const profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: Image.network(controller.GoogleAccount.value?.photoUrl ?? '').image,
          radius: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(controller.GoogleAccount.value?.displayName??''),
        SizedBox(
          height: 10,
        ),
        Text(controller.GoogleAccount.value?.email??''),
        SizedBox(
        height: 10,
        ),
        ElevatedButton.icon(onPressed: (){
          controller.logout();
        }, icon:Icon(Icons.logout_outlined), label: Text("LogOut"))
      ],
    );
  }
}
