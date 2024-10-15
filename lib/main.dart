import 'package:flutter/material.dart';
import 'package:weekone/MyHome.dart';

import 'stackview.dart';
import 'test.dart';
import 'wlcomscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WelcomeScreen(),
      routes: {
        "/home": (context)=> Myhome(),
        '/detailes': (context)=> Test(),
      },
    );
  }
}
