// ignore_for_file: prefer_const_constructors, dead_code

import 'package:blocc/blocs/internet_blocs.dart';
import 'package:blocc/blocs/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("This is Title"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 107, 126),
      ),
      body: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
            listener: (context, state) {
              if (state is InternetGainedState){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("connected"),
                backgroundColor: const Color.fromARGB(255, 122, 190, 124),),);
            }
             else if (state is InternetLostState){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Not connected"),
                backgroundColor: Color.fromARGB(255, 250, 70, 70),),);
            }
          },
          builder: (context, state) {
            if (state is InternetGainedState) {
              return Text(
                "Connected",
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromARGB(255, 5, 136, 141)),
              );
            }


            else if (state is InternetLostState) {
              return Text(
                "Not connected to internet",
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromARGB(255, 5, 136, 141)),
              );
            }


            else {
              return Text(
                "Loading....",
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromARGB(255, 5, 136, 141)
                     ),
              );
            }
          },
        )
       
      ),
    );
  }
}

 // child: BlocBuilder<InternetBloc, InternetState>(
        //   builder: (context, state) {



        //     if (state is InternetGainedState) {
        //       return Text(
        //         "Connected",
        //         style: TextStyle(
        //             fontSize: 30.0, color: Color.fromARGB(255, 5, 136, 141)),
        //       );
        //     }


        //     else if (state is InternetLostState) {
        //       return Text(
        //         "Not connected to internet",
        //         style: TextStyle(
        //             fontSize: 30.0, color: Color.fromARGB(255, 5, 136, 141)),
        //       );
        //     }


        //     else {
        //       return Text(
        //         "Loading....",
        //         style: TextStyle(
        //             fontSize: 30.0, color: Color.fromARGB(255, 5, 136, 141)
        //              ),
        //       );
        //     }


        //   },
        // ),