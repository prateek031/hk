// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Blog",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: LayoutBuilder(
        builder: (context,dimensions) {
          if(dimensions.maxWidth<400){
             return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  image:DecorationImage(
                    image:  NetworkImage('https://images.pexels.com/photos/604684/pexels-photo-604684.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    fit: BoxFit.cover,
                    )
                
                )
              ),
              ListView(
                children: [
                  
                ],
              )
              
            ],
          );
          }
          else if(dimensions.maxWidth<750){
           return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  image:DecorationImage(
                    image:  NetworkImage('https://th.bing.com/th/id/OIP.ri5cvERBHPpmReRGwAgeMgHaL2?pid=ImgDet&w=800&h=1280&rs=1'),
                    fit: BoxFit.cover,
                    )
                
                )
              ),
              ListView(
                children: [
                  Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(92, 250, 255, 204),
              ),
                ],
              )
              
            ],
          );
          }
          else{
            return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  image:DecorationImage(
                    image:  NetworkImage('https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1503&q=80'),
                    fit: BoxFit.cover,
                    )
                
                )
              ),
              ListView(
                children: [
  
                ],
              )
              
            ],
          );
          }
        }
      )
    );
  }
}