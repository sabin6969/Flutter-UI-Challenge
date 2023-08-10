// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DashBoard UI One",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.grey.shade200,
        title: Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(
                    size: size,
                    amount: 500,
                    color: Colors.blue,
                    title: "LEADS",
                  ),
                  CustomContainer(
                      size: size,
                      color: Colors.red,
                      amount: 300,
                      title: "CUSTOMERS"),
                  CustomContainer(
                      size: size,
                      color: Colors.green,
                      amount: 1200,
                      title: " Orders"),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Sales",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
                width: size.width,
                height: size.height * 0.36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                height: size.height * 0.42,
                width: size.width,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Activities",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCircleAvatar(
                          icon: Icon(
                            Icons.list_sharp,
                            size: 35,
                          ),
                        ),
                        CustomCircleAvatar(
                          icon: Icon(
                            Icons.message,
                            size: 35,
                          ),
                        ),
                        CustomCircleAvatar(
                            icon: Icon(
                          Icons.book,
                          size: 35,
                        ))
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.cen,
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          "List",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Calender",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: Icon(
                            Icons.video_call,
                            size: 35,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: Icon(
                            Icons.summarize,
                            size: 35,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: Icon(
                            Icons.currency_bitcoin,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "  Video",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Summary",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Billing",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.icon,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      child: icon,
      radius: 28,
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.size,
    required this.color,
    required this.amount,
    required this.title,
  });

  final Size size;
  final Color color;
  final int amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.13,
      width: size.width * 0.29,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "+$amount",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.black),
          )
        ],
      ),
    );
  }
}
