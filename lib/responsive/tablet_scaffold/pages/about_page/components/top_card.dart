import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/about_page/components/text_slider.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

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
          Positioned(
              top:10,
              left: 10,
              child: SizedBox(
                width: Get.width * 0.5,
                child: const TextSlider(),
              )),
          Positioned(
              bottom:-5,
              right: -10,
              child: Image.asset("assets/images/About_img_1.png",width: Get.width*0.5,)),
          Positioned(
            bottom: Get.width*0.035,
              left: 0,
              right: 0,
              child:Divider(color: Colors.white.withOpacity(0.3),endIndent: Get.width*0.7,) ),
           Positioned(
            bottom: 0,
              left: 0,
              child:Text("We are Deep Generalists.",style: TextStyle(color: kTextLightColor,fontWeight: FontWeight.w200,fontSize: Get.width*0.035),) )
        ],
      ),
    );
  }
}