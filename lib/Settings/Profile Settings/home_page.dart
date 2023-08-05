// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileSettingPage extends StatefulWidget {
  const ProfileSettingPage({super.key});

  @override
  State<ProfileSettingPage> createState() => _ProfileSettingPageState();
}

class _ProfileSettingPageState extends State<ProfileSettingPage> {
  bool hide = false;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.green,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.settings,
            color: Colors.green,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                  color: Colors.black)
                            ]),
                        child: CircleAvatar(
                          radius: 60,
                          child: Icon(
                            Icons.person,
                            size: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 75,
                        left: 80,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.edit),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Full Name",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    hintText: "Evan kutto"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "E-mail",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    hintText: "evan@gmail.com"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              TextFormField(
                obscureText: hide,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          if (counter == 0) {
                            hide = true;
                            counter++;
                          } else {
                            hide = false;
                            counter = 0;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.visibility)),
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    hintText: "********"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    hintText: "New Joursey"),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: 150,
                    height: 40,
                    color: Colors.transparent,
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: Text("CANCEL"),
                  ),
                  MaterialButton(
                      height: 40,
                      color: Colors.green,
                      minWidth: 150,
                      shape: StadiumBorder(),
                      onPressed: () {},
                      child: Text("SAVE"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
