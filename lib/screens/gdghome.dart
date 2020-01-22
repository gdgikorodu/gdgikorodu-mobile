import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class GdgHome extends StatefulWidget {
  @override
  GdgHomeState createState() => new GdgHomeState();
}

class GdgHomeState extends State<GdgHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Text(
                'GOOGLE DEVELOPERS GROUP\n\nIKORODU',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 400,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Html(
                data: """
    <div>
      <h2>Google Developers Group</h2>
      <p>Google Developer Group Ikorodu (GDG Ikorodu) is the first of its kind technical community for group
      of students and ethusiastic developers who are interested in Google technology - from Android, App Engine,
      Flutter, Chrome, Google Cloud Platforms to Product APIs like Youtube API, Maps API, Drive API and Google Calender API.
      </p>
      <p>The group is managed by volunteers and we are always happy to accept new volunteers interested to be part of the
      organizational team.
      </p>
      <p>GDG Ikorodu is located in Ikorodu, Lagos State, Nigeria</p>
      <a href="https://developers.google.com/groups"><u>developers.google.com/groups</u></a><br />
      <br />
          </div>
  """,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Text(
                'GOOGLE DEVELOPERS GROUP\n\nIKORODU',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Text(
                'GOOGLE DEVELOPERS GROUP\n\nIKORODU',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Text(
                'GOOGLE DEVELOPERS GROUP\n\nIKORODU',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
