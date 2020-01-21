import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  @override
  MyDrawerState createState() => new MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blueAccent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/gdg-ikorodu.jpg'),
            ),
          ),
          accountName: Text(
            'GDG IKORODU',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          accountEmail: InkWell(
            child: Text(
              'www.gdgikorodu.com',
              style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  fontSize: 18.0),
            ),
            onTap: () => launch('https://gdgikorodu.com'),
          ),
          currentAccountPicture: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/gdg-logo.jpg'),
                )),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home GDG', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('WTM Ikorodu', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Events', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        Divider(thickness: 2.0,),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('Organizers', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.thumb_up),
          title: Text('Social Media Platform', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        Divider(thickness: 2.0,),
        ListTile(
          leading: Icon(Icons.credit_card),
          title: Text('Sponsors', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.insert_drive_file),
          title: Text('Register', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Mailing List', style: TextStyle(fontWeight: FontWeight.bold),),
          onTap: (){},
        ),
      ],
    );
  }
}
