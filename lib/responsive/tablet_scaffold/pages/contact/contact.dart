import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:mkbuzz/responsive/tablet_scaffold//pages/contact/components/emile_from.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_appBar.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/components/custom_drawer.dart';


import 'components/contact_information.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contact Us",style:TextStyle(color: Colors.black,fontSize: Get.width*0.06,fontWeight: FontWeight.w600)),
            Container(
              height: 5,
              width: Get.width*0.2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimaryColor,
                    Colors.white
                  ]
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
               margin: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width,
                height: 1250,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    ContactInformation(),
                    SizedBox(width: 10,),
                    EmileFrom(),
                  ],
                )
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: SelectableText("© 2008- 2022 | Marketingbuz | ALL RIGHTS RESERVED",style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.withOpacity(0.8)
              ),),
            )
          ],
        ),
      ),
    );
  }
}




