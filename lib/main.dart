import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/Events.dart';
import 'package:gdgikorodu/screens/Resources.dart';
import 'package:gdgikorodu/screens/blog.dart';
import 'package:gdgikorodu/screens/home.dart';
import 'package:gdgikorodu/screens/register.dart';
import 'package:gdgikorodu/screens/sponsors_page.dart';
import 'package:gdgikorodu/screens/team_page.dart';

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
      routes: {
        BlogPage.routeName: (context) => BlogPage(),
        EventsPage.routeName: (context) => EventsPage(),
        TeamPage.routeName: (context) => TeamPage(),
        SponsorPage.routeName: (context) => SponsorPage(),
        ResourcesPage.routeName: (context) => ResourcesPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
      },
    );
  }
}