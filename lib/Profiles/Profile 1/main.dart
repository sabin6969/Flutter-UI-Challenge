import 'package:flutter/material.dart';
import 'package:uiclones/Profiles/Profile%201/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter UI: Profile 1",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHome(),
    );
  }
}
