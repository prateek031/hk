// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networkroute/cubit/counter_cubit.dart';
import 'package:networkroute/pages/homepage.dart';


void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: MaterialApp( 
    home: HomePage(),  
    ),
  ));

}
