import 'package:flutter/material.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/components/bottom_container.dart';
import 'components/brand_consultancy_service.dart';
import 'components/first_container.dart';
import 'components/our_it_services.dart';
import 'components/our_services.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:const [
             FirstContainer(),
             OurServices(),
             OurITServices(),
             BrandConsultancyService(),
            BottomCard()
          ],
        ),
      ),
    );
  }
}

