import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Settings UI 2",
      home: MyHome(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "Times New Roman",
      ),
    );
  }
}
