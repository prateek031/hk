// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pref/notespage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  
  final Notescontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pref's"),
        centerTitle: true,
      ),
      body: 
      Column(
        children: [
          TextField(
          controller: Notescontroller,
   maxLength: 80,
   maxLines: 2,
   decoration: InputDecoration(
     icon: Icon(Icons.favorite),
     labelText: 'Label text',
     labelStyle: TextStyle(
           color: Color(0xFF6200EE),
     ),
     helperText: 'Helper text',
     suffixIcon: Icon(
           Icons.check_circle,
     ),
     enabledBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: Color(0xFF6200EE)),
     ),
   ),
          ),
            SizedBox(height: 20,),

          ElevatedButton(onPressed: (){
            SetNoteData(Notescontroller.text);
          }, child: Text("Add Caption"),),
            SizedBox(height: 20,),
           ElevatedButton(onPressed: (){
           Get.to(NotesPage());
           }, child: Text("Show Post"),),
        ],
      ),


    );
  }

  Future<void>SetNoteData(noteValue) async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('noteData',noteValue);
  }
}