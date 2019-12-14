import 'package:flutter/material.dart';

import 'package:using_polymorphism_flutter/uis/page1.dart';
import 'package:using_polymorphism_flutter/uis/page2.dart';
import 'package:using_polymorphism_flutter/uis/page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Using Polymorphism',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.black
          )
        ),
        primaryIconTheme: IconThemeData(
          color: Colors.black
        )
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => PageOne(title: 'Home'),
        '/page2': (BuildContext context) => PageTwo(title: 'Page 2'),
        '/page3': (BuildContext context) => PageThree()
      }
    );
  }
}

