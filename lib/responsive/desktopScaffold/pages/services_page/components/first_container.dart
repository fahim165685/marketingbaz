import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/services_page/components/text_slider.dart';


class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.width*0.4,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF080808), Color(0xFF1e1e1e)])),
      child: Stack(
        children: [
          ///Text Slider
          Positioned(
            top: Get.width*0.05,
            left: Get.width*0.05,
            child: SizedBox(
              width: Get.width*0.3,
              child: const TextSlider(),
            ),
          ),
          ///Image
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/services_1.png",width: Get.width*0.4),
          ),
          ///Bottom Text
          ///used AutoSizeText package
          const Positioned(
              bottom: 20,
              left: 20,
              child:AutoSizeText(
                "Our Services",
                style: TextStyle(fontSize: 50,color: Colors.white),) ),
          ///Divider
          Positioned(
              bottom: 10,
              left: 20,
              child: Container(
                width: Get.width*0.15,
                height: 1,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}