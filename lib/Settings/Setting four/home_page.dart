import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.green,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 16, right: 20, top: 14),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 30,
              ),
              const ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                title: Text(
                  "Change password",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                title: Text(
                  "Content settings",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                title: Text(
                  "Social Media",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                title: Text(
                  "Language",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                title: Text(
                  "Privacy and Policy",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const SizedBox(
                height: 30,
              ),
              const ListTile(
                leading: Icon(
                  Icons.volume_up,
                  color: Colors.green,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              ListTile(
                title: const Text(
                  "New update",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Switch(
                    activeColor: Colors.green,
                    value: true,
                    onChanged: (value) {}),
              ),
              ListTile(
                title: const Text(
                  "Account Status",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Switch(
                    activeColor: Colors.green,
                    value: false,
                    onChanged: (value) {}),
              ),
              Center(
                child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
