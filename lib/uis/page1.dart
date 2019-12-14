import 'package:flutter/material.dart';

import 'package:using_polymorphism_flutter/utils/base/page_layout_util.dart';
import 'package:using_polymorphism_flutter/utils/mixins/nav_drawer.dart';

class PageOne extends StatefulWidget {
  final String title;

  PageOne({Key key, this.title}) : super(key : key);

  @override
  _PageOneState createState() {
    return _PageOneState(this.title);
  }
}

class _PageOneState extends PageLayoutState<PageOne> with NavDrawer {
  final String title;

  _PageOneState(this.title);

  @override
  int getCurrentPage(BuildContext context) => 0;

  @override
  String getTitle(BuildContext context) {
    return title;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHeader(context),
      drawer: buildNavDrawer(context),
      body: buildBody(context),
      bottomNavigationBar: buildFooter(context),
    );
  }
}