// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Map dataFromScreen = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(111, 25, 65, 65),
            image: DecorationImage(
                image: AssetImage("assets/day.png"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_location,
                  color: Color.fromRGBO(225, 219, 197, 1),
                  size: 24.0,
                ),
                label: Text(
                  "Edit location",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(200, 197, 203, 225)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(22)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                color: Color.fromARGB(111, 25, 65, 65),
                child: Column(
                  children: [
                    Text(
                      dataFromScreen["time"],
                      style: TextStyle(fontSize: 55, color: Colors.white),
                    ),
                    Text(
                      dataFromScreen["zone"],
                      style: TextStyle(fontSize: 46, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
