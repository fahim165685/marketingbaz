import 'package:flutter/material.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_appBar.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_drawer.dart';

import '../../../tablet_scaffold/pages/about_page/components/about_marketingbaz.dart';
import '../../../tablet_scaffold/pages/about_page/components/board_of_directors.dart';
import '../../../tablet_scaffold/pages/about_page/components/top_card.dart';
import '../../components/bottom_card.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: ListView(
        children:const [
          TopCard(),
          SizedBox(height: 20,),
          AboutMarketingbaz(),
          BoardOfDirectors(),
          SizedBox(height: 50,),
          BottomCard(),
        ],
      ),
    );
  }
}