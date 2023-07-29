// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fireauth/utils/toast.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  final _addpostcontroller = TextEditingController();
  bool isloading = false;
  final database = FirebaseDatabase.instance.ref("newDB");

  @override
  void dispose() {
    _addpostcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Post Here"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          SizedBox(
            height: 30.0,
          ),
          TextField(
            controller: _addpostcontroller,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: "Write somthing here",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isloading = true;
                });
                database
                    .child(DateTime.now().microsecondsSinceEpoch.toString())
                    .set({
                  'title': _addpostcontroller.text.toString(),
                  'id': DateTime.now().microsecondsSinceEpoch.toString()
                }).then((value) {
                  setState(() {
                    isloading = false;
                  });
                  ToastMsg().TostMessage("Post Added !!....");
                }).onError((error, stackTrace) {
                  setState(() {
                    isloading = false;
                  });
                  ToastMsg().TostMessage(error.toString());
                });
                _addpostcontroller.clear();
              },
              icon: Icon(Icons.short_text),
              label: isloading
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text("Add Your post")),
        ]),
      ),
    );
  }
}
