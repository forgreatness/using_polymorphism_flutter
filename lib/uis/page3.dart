import 'package:flutter/material.dart';

import 'package:using_polymorphism_flutter/utils/base/page_layout_util.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key}) : super(key : key);

  @override
  _PageThreeState createState() {
    return _PageThreeState();
  }
}

class _PageThreeState extends PageLayoutState<PageThree> {
  @override
  int getCurrentPage(BuildContext context) => 2;

  @override
  Widget buildHeader(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/polymorphism_logo.png', fit: BoxFit.cover),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/winkers.png',
        fit: BoxFit.fill,
      )
    );
  }
}
