import 'package:car/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Practice());
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Colors.yellow,
      titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
      fontSize: 17),centerTitle: true)),
   
       );
  }
}