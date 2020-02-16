import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/Events.dart';
import 'package:gdgikorodu/screens/Resources.dart';
import 'package:gdgikorodu/screens/blog.dart';
import 'package:gdgikorodu/screens/home.dart';
import 'package:gdgikorodu/screens/register.dart';
import 'package:gdgikorodu/screens/sponsors_page.dart';
import 'package:gdgikorodu/screens/team_page.dart';
import 'package:gdgikorodu/utils/community.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MyApp(),
  );
}

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
        //* Custom Google Font
        fontFamily: Community.google_sans_family,
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        disabledColor: Colors.grey,
        cardColor: Colors.white,
        canvasColor: Colors.grey[50],
        brightness: Brightness.light,
        buttonTheme: Theme.of(context)
            .buttonTheme
            .copyWith(colorScheme: ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home: MyHomePage(title: 'Home'),
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
