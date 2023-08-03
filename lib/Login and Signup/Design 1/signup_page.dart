// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uiclones/Login%20and%20Signup/Design%201/email_validation.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Signup"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 24),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field is required";
                    } else if (!validateEmail(emailController.text)) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: "Enter Your Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(fontSize: 24),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field is required";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: "Enter Your City",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 24),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field is required";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: "Enter Your Profession",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 24),
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field is required";
                    } else if (passwordController.text.length < 6) {
                      return "Too Short Password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: "Enter Your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  elevation: 0,
                  minWidth: 400,
                  splashColor: Colors.yellow,
                  color: Colors.purple,
                  shape: StadiumBorder(),
                  height: 50,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      final snackBar =
                          SnackBar(content: Text("Registration Completed"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
