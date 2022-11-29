import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../tablet_scaffold/pages/services_page/components/text_slider.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.width*0.5,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF080808), Color(0xFF1e1e1e)])),
      child: Stack(
        children: [
          ///Text Slider
          Positioned(
            top:10,
            left: 10,
            child: SizedBox(
              width: Get.width*0.5,
              child: const TextSlider(),
            ),
          ),
          ///Image
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/services_1.png",width: Get.width*0.5),
          ),
          ///Bottom Text
          ///used AutoSizeText package
           Positioned(
              bottom: 20,
              left: 20,
              child:AutoSizeText(
                "Our Services",
                style: TextStyle(fontSize: Get.width*0.05,color: Colors.white),) ),
          ///Divider
          Positioned(
              bottom: 10,
              left: 20,
              child: Container(
                width: Get.width*0.2,
                height: 1,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}