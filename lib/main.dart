import 'package:flutter/material.dart';
import 'package:tomisha_demo/gen/fonts.gen.dart';
import 'package:tomisha_demo/screens/homepage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deine Job Website',
      theme: ThemeData(fontFamily: FontFamily.lato),
      home: const HomePageScreen(),
    );
  }
}
