// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uiclones/Login%20and%20Signup/Design%201/login_page.dart';
import 'package:uiclones/Login%20and%20Signup/Design%201/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login and Signup Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/signup": (context) => Signup(),
      },
    );
  }
}
