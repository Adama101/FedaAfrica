import 'package:flutter/material.dart';
import 'children_bottom_tabs.dart';

class KidEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChildrenBottomTabs(),
    );
  }
}