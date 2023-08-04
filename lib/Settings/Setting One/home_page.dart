// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: ListView(
            children: [
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  radius: 40,
                ),
                title: Text("Jane Doe"),
                subtitle: Text("Nepal"),
              ),
              ListTile(
                onTap: () {},
                title: Text("Languages"),
                subtitle: Text("English Us"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {},
                title: Text("Profile Settings"),
                subtitle: Text("Jane Doe"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {},
                title: Text("Email Notifaction"),
                subtitle: Text("On"),
                trailing: Switch(value: true, onChanged: (value) {}),
              ),
              ListTile(
                onTap: () {},
                title: Text("Push Notification"),
                subtitle: Text("On"),
                trailing: Switch(value: false, onChanged: (value) {}),
              ),
              ListTile(
                onTap: () {},
                title: Text("Logout"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
