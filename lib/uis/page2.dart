import 'package:flutter/material.dart';

import 'package:using_polymorphism_flutter/utils/base/page_layout_util.dart';

class PageTwo extends StatefulWidget {
  final String title;

  PageTwo({Key key, this.title}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState(this.title);
}

class _PageTwoState extends PageLayoutState<PageTwo> {
  final String title;

  _PageTwoState(this.title);

  @override
  int getCurrentPage(BuildContext context) => 1;

  @override
  String getTitle(BuildContext context) {
    return title;
  }

  @override
  void initState() {
    super.initState();
  }
}