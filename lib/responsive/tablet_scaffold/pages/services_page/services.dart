import 'package:flutter/material.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/bottom_card.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_appBar.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_drawer.dart';

import '../../../tablet_scaffold/pages/services_page/components/our_services.dart';
import '../../../tablet_scaffold/pages/services_page/components/brand_consultancy_service.dart';
import '../../../tablet_scaffold/pages/services_page/components/first_container.dart';
import '../../../tablet_scaffold/pages/services_page/components/our_it_services.dart';


class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: ListView(
        children:const [
           TopCard(),
            OurServices(),
            OurITServices(),
            BrandConsultancyService(),
           BottomCard()
        ],
      ),
    );
  }
}

