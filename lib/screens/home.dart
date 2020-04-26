import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/MyDrawer.dart';
import 'package:gdgikorodu/widgets/dev_scaffold.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gdgikorodu/screens/gdghome.dart';

//final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  static const String routeName = "/";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: 'Home',
      body: GdgHome(),
      drawer: Container(
        constraints: new BoxConstraints.expand(
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        color: Colors.white,
        alignment: Alignment.center,
        child: MyDrawer(),
      ),
    );
  }
}
