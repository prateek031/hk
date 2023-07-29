// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, unused_field, non_constant_identifier_names, avoid_returning_null_for_void, prefer_final_fields

// import 'dart:js_interop';

import 'package:fireauth/pages/login/loginpage.dart';
import 'package:fireauth/pages/signup/succes.dart';
import 'package:fireauth/utils/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isloading = false;
  final _FormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: ListView(
        children: [
          Form(
              key: _FormKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('asset/firebase.png')),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color.fromARGB(255, 255, 102, 0),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 255, 153, 0)),
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: Color.fromARGB(255, 255, 115, 0),
                        ),
                        hintText: "Enter Email Address",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      cursorColor: Color.fromARGB(255, 255, 102, 0),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Color.fromARGB(255, 255, 115, 0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 255, 136, 0)),
                        hintText: "Enter the Pasword",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_FormKey.currentState!.validate()) {
                          setState(() {
                            isloading = true;
                          });
                          _auth
                              .createUserWithEmailAndPassword(
                                  email: _emailController.text.toString(),
                                  password: _passwordController.text.toString())
                              .then((value) {
                            setState(() {
                              isloading = false;
                            });
                            Get.to(() => Succespage());
                          }).onError((error, stackTrace) {
                            setState(() {
                              isloading = false;
                            });
                            ToastMsg().TostMessage(error.toString());
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        backgroundColor: Colors.amber,
                      ),
                      child: isloading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Get.to(() => LoginPage());
                            },
                            child: Text('Log In')),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
