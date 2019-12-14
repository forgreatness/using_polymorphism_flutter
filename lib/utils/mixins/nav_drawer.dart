import 'package:flutter/material.dart';

abstract class NavDrawer {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory NavDrawer._() => null;

  Widget buildNavDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
      // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Using Polymorphism'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); //close the drawer
              if (ModalRoute.of(context).settings.name != '/') {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              }
            },
          ),
          ListTile(
            title: Text('Page 2'),
            onTap: () {
              Navigator.pop(context); //close the drawer
              if (ModalRoute.of(context).settings.name != '/page2') {
                Navigator.pushNamed(context, '/page2');
              }
            },
          ),
          ListTile(
            title: Text('Page 3'),
            onTap: () {
              Navigator.pop(context); //close the drawer
              if (ModalRoute.of(context).settings.name != '/page3') {
                Navigator.pushNamed(context, '/page3');
              }
            },
          )
        ],
      ),
    );
  }
}