import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../desktopScaffold/pages/sister_concern/components/text_slider.dart';



class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width*0.4,
      width: Get.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF080808), Color(0xFF1e1e1e)])),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              left: 10,
              child: SizedBox(
                width: Get.width*0.5,
                child: const TextSlider(),
              )),
          Positioned(
              bottom: 0,
              right: -180,
              child: Opacity(
                opacity: 0.5,
                  child: Image.asset("assets/images/Sister_Concern_vector.png",width: Get.width*0.6,))),
        ],
      ),
    );
  }
}