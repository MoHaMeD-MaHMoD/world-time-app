// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getData() async {
    try {
      Response response = await get(
          Uri.parse("http://worldtimeapi.org/api/timezone/Africa/Cairo"));
      Map dataRecived = jsonDecode(response.body);
      DateTime realTime = DateTime.parse(dataRecived["utc_datetime"]);
      int offset = int.parse(dataRecived["utc_offset"].substring(0, 3));
      String timeZone = dataRecived["timezone"];
      realTime = realTime.add(Duration(hours: offset));
      String stringRealTime = DateFormat('hh:mm a').format(realTime);

      Navigator.pushReplacementNamed(context, '/Home',
          arguments: {"time": stringRealTime, "zone": timeZone});
    } catch (e) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  getData();
                },
                child: Text("GEt Data")),
            SpinKitThreeBounce(
              color: Color.fromRGBO(78, 81, 90, 1),
              size: 64.0,
            ),
          ],
        ),
      ),
    );
  }
}
