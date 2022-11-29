import 'package:flutter/material.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/bottom_container.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/client_review_container.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/top_card.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/any_questions_you_want.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/second_container.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/industries_we_serve.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //FirstContainer
          TopCard(),
          //SecondContainer
          SecondContainer(),
          ///ThirdContainer
          IndustriesWeServe(),
          ///ForthContainer
          AnyQuestionsYouWant(),
          ///ClientReviewContainer
          ClientReviewContainer(),
          ///BottomContainer
          BottomCard(),
        ],
      ),
    );
  }
}
//bottom
/*

 */
