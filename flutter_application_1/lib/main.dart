import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: Column(
           children: <Widget>[
             CircleAvatar(
               radius: 50.0,
               backgroundImage: ,
             ),
           ],
        ),),
      ),
    );
  }
}


