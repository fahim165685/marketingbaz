import 'package:flutter/material.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/bottom_card.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_appBar.dart';
 import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_drawer.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/components/our_sister_oncern.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/components/gallery.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/components/top_card.dart';

class SisterConcern extends StatelessWidget {
  const SisterConcern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: ListView(
        children: const[
          TopCard(),
          OurSisterConcern(),
          Gallery(),
          BottomCard()
        ],
      ),
    );
  }
}



//brand



