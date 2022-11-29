import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/contact/components/emile_from.dart';

import 'components/contact_information.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              width: Get.width,
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const[
                  ContactInformation(),
                  //SizedBox(width: 10,),
                  EmileFrom(),
                ],
              )),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}




