// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uiclones/Settings/Setting%20One/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI Part 2",
      home: SettingPage(),
      theme: ThemeData.dark().copyWith(),
    );
  }
}
