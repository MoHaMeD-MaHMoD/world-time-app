// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(157,162,180, 1),
        title: Text(
          "Choise Location",
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(220, 223, 237, 1),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Card(
                  color: Color.fromRGBO(249, 249, 252, 1),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/egypt.png"),
                    ),
                    title: Text(
                      "Egypt - Cairo",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    onTap: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
