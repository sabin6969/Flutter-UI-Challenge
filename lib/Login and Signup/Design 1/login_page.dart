// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'email_validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 160,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 23),
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This Field is Required";
                      } else if (!validateEmail(emailController.text)) {
                        return "Enter a Valid Email";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Enter Your Email",
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 24),
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This Field is Required";
                      } else if (passwordController.text.length < 6) {
                        return "Password Too Short, Define Password having atleast 7 characters";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                        labelText: "Enter Your Password",
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    splashColor: Colors.blue,
                    elevation: 0,
                    shape: StadiumBorder(),
                    minWidth: 400,
                    height: 50,
                    color: Colors.purple,
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        final snackBar =
                            SnackBar(content: Text("Login Sucess"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Here?",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/signup");
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
