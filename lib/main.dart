import 'package:flutter/material.dart';
import 'package:world_time_app/pages/Loading.dart';
import 'package:world_time_app/pages/Home.dart';
import 'package:world_time_app/pages/Location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/Home': (context) => const Home(),
        '/Location': (context) => const Location(),
      },
    );
  }
}
