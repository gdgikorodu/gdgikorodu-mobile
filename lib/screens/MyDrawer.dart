import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/Events.dart';
import 'package:gdgikorodu/screens/Resources.dart';
import 'package:gdgikorodu/screens/blog.dart';
import 'package:gdgikorodu/screens/team_page.dart';
import 'package:gdgikorodu/screens/social_media.dart';

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
//        UserAccountsDrawerHeader(
//          decoration: BoxDecoration(
//            shape: BoxShape.rectangle,
//            color: Colors.blueAccent,
//            image: DecorationImage(
//              fit: BoxFit.cover,
//              image: AssetImage('assets/images/gdg-ikorodu.jpg'),
//            ),
//          ),
//          accountName: Text(
//            'GDG IKORODU',
//            style: TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 24.0,
//            ),
//          ),
//          accountEmail: InkWell(
//            child: Text(
//              'www.gdgikorodu.com',
//              style: TextStyle(
////                  color: Colors.blueAccent,
//                  decoration: TextDecoration.underline,
//                  fontSize: 18.0),
//            ),
//            onTap: () => launch('https://gdgikorodu.com'),
//          ),
//          currentAccountPicture: Container(
//            decoration: BoxDecoration(
//              shape: BoxShape.circle,
//              image: DecorationImage(
//                fit: BoxFit.contain,
//                image: AssetImage('assets/images/gdg-logo.jpg'),
//              ),
//            ),
//          ),
//        ),
//        DrawerHeader(
//          child: Text('Drawer Header'),
//          decoration: BoxDecoration(
//            color: Colors.blue,
//          ),
//        ),
        UserAccountsDrawerHeader(
          accountName: Text(
            "GDG-Ikorodu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          accountEmail: Text(
            "gdgikorodu.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
//              fontSize: 20.0,
            ),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                ? Colors.blue
                : Colors.white,
            child: Image.asset('assets/images/gdg-logo.jpg'),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text(
            'Events',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventsPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.computer),
          title: Text(
            'Blog',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlogPage(),
              ),
            );
          },
        ),
        Divider(
          thickness: 2.0,
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text(
            'Team',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeamPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.perm_media),
          title: Text(
            'Design and Code',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResourcesPage(),
              ),
            );
          },
        ),
        Divider(
          thickness: 2.0,
        ),
        ListTile(
          leading: Icon(Icons.thumb_up),
          title: Text(
            'Social Media Platform',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SocialPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
