import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/bottom_container.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/sister_concern/components/gallery.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/sister_concern/components/our_sister_concern.dart';
import '../sister_concern/components/top_card.dart';

class OurInnovation extends StatelessWidget {
  const OurInnovation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          TopCard(),
          OurSisterConcern(),
          Gallery(),
          BottomCard()
        ],
      ),
    );
  }
}


