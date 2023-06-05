// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';

import '../Classes/AllCountries.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<AllCountries> allCountry = [
    AllCountries(
        url: "Africa/Cairo", countryName: "Egypt-Cairo", flag: "egypt.png"),
    AllCountries(
        url: "Asia/Gaza", countryName: "Palestine-Gaza", flag: "Palestine.png"),
    AllCountries(
        url: "Asia/Riyadh", countryName: "Saudi Arabia", flag: "sa.png"),
    AllCountries(
        url: "Africa/Casablanca", countryName: "Morocco", flag: "morocco.png"),
    AllCountries(
        url: "Africa/Tunis", countryName: "Tunis", flag: "tunisia.png"),
    AllCountries(
        url: "Africa/Algiers", countryName: "Algiers", flag: "algeria.png"),
    AllCountries(
        url: "Asia/Beirut", countryName: "lebanon", flag: "lebanon.png"),
    AllCountries(
        url: "Asia/Dubai", countryName: "Emirates", flag: "Emirates.png"),
    AllCountries(url: "Asia/Qatar", countryName: "Qatar", flag: "Qatar.png"),
    AllCountries(
        url: "America/Argentina/Salta",
        countryName: "Argentina",
        flag: "Argentina.png"),
    AllCountries(
        url: "America/Sao_Paulo", countryName: "Brazil", flag: "Brazil.png"),
    AllCountries(
        url: "America/New_York",
        countryName: "United State",
        flag: "America.png"),
    AllCountries(url: "Asia/Tokyo", countryName: "Japan", flag: "Japan.png"),
    AllCountries(
        url: "America/Mexico_City",
        countryName: "Mexico",
        flag: "Mexico_City.png"),
    AllCountries(
        url: "America/Toronto", countryName: "Canada", flag: "canada.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(157, 162, 180, 1),
        title: Text(
          "Choise Location",
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(220, 223, 237, 1),
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: allCountry.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Color.fromRGBO(249, 249, 252, 1),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/${allCountry[index].flag}"),
                ),
                title: Text(
                  allCountry[index].countryName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                onTap: () async{
                  AllCountries clickedCountry = allCountry[index];
                  await clickedCountry.getData();
                  Navigator.pop(context, {
                    "time": clickedCountry.timeZone,
                    "zone": clickedCountry.stringRealTime,
                    "isDay": clickedCountry.isDay
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

/*
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
              onTap: () {
                Navigator.pop(context,
                    {"time": "3:30pm", "zone": "marcon", "isDay": false});
              },
            ),
          ),
        ),
*/
