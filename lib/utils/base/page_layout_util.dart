import 'package:flutter/material.dart';

abstract class PageLayoutState <T extends StatefulWidget> extends State<T> {
  String getTitle(BuildContext context) => "";

  int getCurrentPage(BuildContext context) => 0;

  Widget buildHeader(BuildContext context) {
    return AppBar(
      title: Text(getTitle(context)),
      centerTitle: true,
      backgroundColor: Colors.white,

    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            child: Text('Layout'),
            alignment: Alignment.center,
          )
        )
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        switch (index) {
          case 0:
            if (ModalRoute.of(context).settings.name != '/') {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            }
            break;
          case 1:
            if (ModalRoute.of(context).settings.name != '/page2') {
              Navigator.pushNamed(context, '/page2');
            }
            break;
          case 2:
            if (ModalRoute.of(context).settings.name != '/page3') {
              Navigator.pushNamed(context, '/page3');
            }
        }
      },
      currentIndex: getCurrentPage(context),
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home')
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.mail),
          title: new Text('Messages')
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.info),
          title: new Text('Info')
        )
      ]
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHeader(context),
      body: buildBody(context),
      bottomNavigationBar: buildFooter(context),
    );
  }
}