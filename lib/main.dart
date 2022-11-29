import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/desktopScaffold/desktopScaffold.dart';
import 'package:mkbuzz/responsive/mobileScaffolnd/mobileScaffold.dart';
import 'package:mkbuzz/responsive/responsive_layout.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/tablet_scaffold.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Marketing Buz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //constraints
        primarySwatch: Colors.deepPurple,
        fontFamily: "Roboto"
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold:DesktopScaffold()
      )
    );
  }
}
