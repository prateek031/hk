// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networkroute/cubit/counter_cubit.dart';
import 'package:networkroute/pages/thirdpage.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Second Page of Network Routes"),
        backgroundColor: Color.fromARGB(255, 102, 247, 18),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "this is the counter value",
              style: TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 97, 8, 2),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                 if(state.isincremented==true){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("incremented"),
            backgroundColor: Colors.greenAccent,
            duration: Duration(milliseconds: 100),),);
          }
          else if(state.isincremented==false){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("decremented"),backgroundColor: Colors.red,
            duration: Duration(milliseconds: 100),));
          }
              },
              builder: (context, state) {
                   if (state.counterValue < 0) {
                    return Text(
                      "yooo its is neg bruuh${state.counterValue.toString()}",
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Color.fromARGB(255, 61, 15, 15),
                      ),
                    );
                  } else if (state.counterValue == 5) {
                    return Text(
                      "yeahh it ${state.counterValue.toString()}",
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Color.fromARGB(255, 61, 15, 15),
                      ),
                    );
                  }
                  return Text(
                    state.counterValue.toString(),
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Color.fromARGB(255, 61, 15, 15),
                    ),
                  );
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  child: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 10.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 10.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(_)=>BlocProvider.value(value: BlocProvider.of<CounterCubit>(context),
                        child: Thirdpage()),
                    ),
                    );
                  },
                  child: Icon(Icons.navigate_next),
                ),
              ],
            )
          ]),
    );
  }
}

