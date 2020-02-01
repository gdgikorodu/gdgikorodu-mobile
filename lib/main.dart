import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/home.dart';
import 'package:gdgikorodu/screens/gdghome.dart';

void main() => runApp(
  MyApp(),
);

class MyApp extends StatefulWidget {
  static const String routeName = "/";
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GDGIkorodu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GDGIkorodu'),
    );
  }
}