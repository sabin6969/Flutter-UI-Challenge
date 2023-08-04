// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 210, 210),
      appBar: AppBar(
        elevation: 6,
        leading: Icon(Icons.arrow_back),
        title: Text("Settings"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ACCOUNT",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: CircleAvatar(),
                      title: Text("Damodar Lohani"),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Text("Private Account"),
                      trailing: Switch(
                          activeColor: Colors.purple,
                          value: true,
                          onChanged: (value) {}),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "PUSH NOTIFICATIONS",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: Text("Received notification"),
                      trailing: Switch(
                          activeColor: Colors.purple,
                          value: true,
                          onChanged: (value) {}),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    ListTile(
                      enabled: false,
                      title: Text("Received newsletter"),
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Received Offer Notification"),
                      trailing: Switch(
                          activeColor: Colors.purple,
                          value: true,
                          onChanged: (value) {}),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    ListTile(
                      enabled: false,
                      onTap: () {},
                      title: Text("Received App Updates"),
                      trailing: Switch(
                          activeColor: Color.fromARGB(255, 210, 210, 210),
                          value: true,
                          onChanged: (value) {}),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
