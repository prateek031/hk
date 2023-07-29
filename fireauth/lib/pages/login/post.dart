// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:fireauth/pages/login/add_post.dart';
import 'package:fireauth/pages/login/loginpage.dart';
import 'package:fireauth/pages/signup/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final auth = FirebaseAuth.instance;
  final data = FirebaseDatabase.instance.ref("newDB").orderByChild('title');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => LoginPage());
            },
            icon: Icon(Icons.navigate_before)),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Get.to(() => SignupPage());
              },
              icon: Icon(Icons.logout_outlined))
        ],
        automaticallyImplyLeading: false,
        title: Text("Posts"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: FirebaseAnimatedList(
              query: data,
              itemBuilder: (context, snapshot, animation, index) {
                return ListTile(
                  title: Text(snapshot.child("title").value.toString()),
                  subtitle: Text(snapshot.child("id").value.toString()),
                );
              },
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddPostPage());
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
