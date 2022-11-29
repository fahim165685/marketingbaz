import 'package:flutter/material.dart';
import 'pages/tab_bar/tab_bar.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: MyTabBar(),
    );
  }
}
