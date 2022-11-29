import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home_page/components/text_slider.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.width * 0.5,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF080808), Color(0xFF1e1e1e)])),
      child: Stack(
        children: [
          ///Background Logo
          Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                  width: Get.width * 0.7,
                  child: Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "assets/icons/MB_Logo.png",
                      )))),
          Positioned(
              top: 20,
              child: SizedBox(

                  width: Get.width*0.5,
                  child: const TextSlider())),


          ///Company Onur image
          Positioned(
              bottom: 0,
              right: 50,
              child: SizedBox(
                width: Get.width * 0.33,
                child: Image.asset("assets/images/IMG_1.png"),
              )),
        ],
      ),
    );
  }
}