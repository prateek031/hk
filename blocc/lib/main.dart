// ignore_for_file: prefer_const_constructors

import 'package:blocc/blocs/internet_blocs.dart';
import 'package:flutter/material.dart';
import 'package:blocc/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => InternetBloc(),
    child: MaterialApp(
      home: HomePage(),
    ),
  ));
}
