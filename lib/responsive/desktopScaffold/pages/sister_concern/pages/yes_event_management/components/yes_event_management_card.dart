
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class YesEventManagementCard extends StatelessWidget {
  const YesEventManagementCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Logo
          SizedBox(
            height:250,
            child: Image.asset("assets/images/YEM_Logo.png"),
          ),
          const SizedBox(height: 5,),
          ///Logo Text
          const SelectableText("Yes Event Management",style: TextStyle(
            color: Colors.black,
            fontSize:40,
            fontWeight: FontWeight.w700,
          ),),
          const SizedBox(height: 5,),
          Container(
            height: 5,
            width: 400,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      kPrimaryColor,
                      kPrimaryColor,
                      kTextLightColor
                    ]),
                borderRadius: BorderRadius.circular(50)
            ),
          ),
          const SizedBox(height: 50,),
          Center(
            child: SelectableText(
              "Best Event Management Company in Jaleswaritola, Bogura, Bangladesh\nRank#l Event Planners Jaleswaritola, Bogura, Bangladesh",
              textAlign:TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300,fontSize: Get.width*0.025),
            ),
          ),
          ///Divider
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 5,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                    colors: [
                      kPrimaryColor,
                      kTextLightColor,
                    ]),
              ),
            ),
          ),

        ],
      ),
    );
  }
}