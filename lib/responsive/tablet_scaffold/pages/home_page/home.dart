import 'package:flutter/material.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_appBar.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_drawer.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/home_page/components/any_questions_you_want.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/bottom_card.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/home_page/components/client_review_container.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/home_page/components/industries_we_serve.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/home_page/components/second_container.dart';

import '../../../tablet_scaffold/pages/home_page/components/top_card.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: ListView(
        children: const [
          //FirstContainer
          TopCard(),
          //SecondContainer
           SecondContainer(),
          ///ThirdContainer
          IndustriesWeServe(),
          // ///ForthContainer
           AnyQuestionsYouWant(),
          ///ClientReviewContainer
          ClientReviewContainer(),
          // ///BottomContainer
         BottomCard(),
        ],
      ),
    );
  }
}
//bottom
/*

 */
