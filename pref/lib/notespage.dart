// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  String ? noteValue;
  @override
  void initState() {
    super.initState();
    getnotes();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uhvfjbfjbv"),
        centerTitle: true,
      ),
      body: Center(child: noteValue==null?  Text("no data"):
      Text(noteValue !),),
    );
  }
  void getnotes() async{
  final  SharedPreferences pref = await SharedPreferences.getInstance();
  noteValue=pref.getString('noteData');
  setState(() {
     
  });
}
}