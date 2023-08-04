// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(179, 254, 236, 236),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 89, 162, 221),
                const Color.fromARGB(255, 99, 22, 113),
              ])),
            ),
            Positioned(
              top: 120,
              left: 20,
              right: 20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Container(
                  color: Colors.red,
                  height: size.height * 0.2,
                  width: size.width,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
