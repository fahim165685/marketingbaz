import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/about_page/about.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/contact/contact.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/home_page/home.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/sister_concern/sister_concern.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/services_page/services.dart';

///TabBarController
class TabsController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller;
  final List<Tab> myTabs = <Tab>[
    const Tab(text: "Home"),
    const Tab(text: "About"),
    const Tab(text: "Services"),
    // const Tab(text: "Insights"),
    // const Tab(text: "Careers"),
    const Tab(text: "Sister Concern"),
    const Tab(text: "Contact"),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    controller = TabController(length: myTabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    controller.dispose();
    super.onClose();
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TabsController tabs = Get.put(TabsController());
    return Column(
      children: [
        Container(
          // width: Get.width,
          // height: Get.width*0.5,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF080808), Color(0xFF1e1e1e)])),
          child: Column(
            children: [
              ///Custom App Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Logo
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        "assets/icons/Marketing_baz_Logo.png",
                        color: Colors.white,
                      )),
                  const SizedBox(width: 50,),
                  ///Tab Bar
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.withOpacity(0.1)),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                          controller: tabs.controller,
                          tabs: tabs.myTabs
                      ),
                    ),
                  ),
                  const SizedBox(width: 150,),
                  ///Contract Us
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5),
                          child: Text("Contract Us",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white)),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow:  [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset:const Offset(-5,0),
                                    blurRadius: 10
                                )
                              ]
                          ),
                          child: const Center(child: Text("01548751235",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),)),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabs.controller,
          children: const[
            Home(),
            About(),
            Services(),
            OurInnovation(),
            Contact(),
          ],
        ))
      ],
    );
  }
}
