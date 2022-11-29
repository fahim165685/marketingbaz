
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
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Logo
          SizedBox(
            width: Get.width*0.3,
            child: Image.asset("assets/images/YEM_Logo.png"),
          ),
          const SizedBox(height: 5,),
          ///Logo Text
           SelectableText("Yes Event Management",style: TextStyle(
            color: Colors.black,
            fontSize:Get.width*0.05,
            fontWeight: FontWeight.w700,
          ),),
          const SizedBox(height: 5,),
          Container(
            height: 5,
            width: Get.width*0.3,
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
              style: TextStyle(fontWeight: FontWeight.w300,fontSize: Get.width*0.03),
            ),
          ),
          ///Divider
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 5,
              width: Get.width*0.25,
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
          const SizedBox(height: 100,),
          SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("About Yas Event Management",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam magna aliquam erat volutpat. Ut wisienim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortisnisl ut aliquip Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diamnonummy nibh euismod tincidunt ut Iaoreet dolore magna aliquam erat volut-",
                  textAlign: TextAlign.justify,

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}