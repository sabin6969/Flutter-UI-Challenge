// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 255, 17, 0),
                  const Color.fromARGB(255, 212, 186, 108),
                ])),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.call,
                            size: 40,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(width: 6, color: Colors.red),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg")),
                              shape: BoxShape.circle),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 40,
                          child: Icon(
                            Icons.message,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ram Kumar",
                          style: TextStyle(fontSize: 23),
                        )
                      ],
                    ),
                    Text(
                      "Kathmandu,Nepal",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width * 0.5,
                height: size.height * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50895",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "FOLLOWERS",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                color: const Color.fromARGB(255, 242, 90, 79),
              ),
              Container(
                width: size.width * 0.5,
                height: size.height * 0.15,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "34524",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "FOLLOWING",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            subtitle: Text(
              "ram@kumar.com.np",
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: Text(
              "Phone",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            subtitle: Text("+977 9881234859"),
          ),
          ListTile(
            title: Text(
              "Twitter",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            subtitle: Text("@ramkumar"),
          ),
          ListTile(
            title: Text(
              "Facebook",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            subtitle: Text("facebook.com/username"),
          )
        ],
      ),
    );
  }
}
