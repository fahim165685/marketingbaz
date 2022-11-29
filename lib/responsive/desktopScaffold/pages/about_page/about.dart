import 'package:flutter/material.dart';

import '../home_page/components/bottom_container.dart';
import 'components/board_of_directors.dart';
import 'components/top_card.dart';
import 'components/about_marketingbaz.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:const [
          TopCard(),
          SizedBox(height: 50,),
          AboutMarketingbaz(),
          BoardOfDirectors(),
          SizedBox(height: 50,),
          BottomCard(),
        ],
      ),
    );
  }
}