// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Classes/AllCountries.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getDataFromAllCountriesClass() async {
    AllCountries allCountries =
        AllCountries(url : "Africa/Cairo", countryName: "Egypt-Cairo", flag: "egypt.png");
    await allCountries.getData();
    Navigator.pushReplacementNamed(context, '/Home', arguments: {
      "time": allCountries.stringRealTime,
      "zone": allCountries.timeZone,
      "isDay": allCountries.isDay
    });
  }

  @override
  void initState() {
    super.initState();
    getDataFromAllCountriesClass();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
