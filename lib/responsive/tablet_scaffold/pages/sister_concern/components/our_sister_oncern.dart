
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/pages/cando_style/cando_style.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/pages/yes_event_management/yes_event_management.dart';

class OurSisterConcern extends StatelessWidget {
  const OurSisterConcern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child:Column(
        children: [
        brandCard(
          image: "assets/images/YEM_Logo.png",
          title: "Yes Event Management",
          subTitle: "Yes Event Management is one of the best service management company owned by Marketingbaz based in Bangladesh made up of a Proactive, strategist, dynamic, and enthusiastic team who are highly experienced for planning or executing the events.We habituate to take challenge and responsibility for our client’s programs for proper event's intelligence Solutions.",
          onTap: (){
            Get.to(()=>const YesEventManagement(),transition:Transition.cupertino,duration: const Duration(seconds:1) );
          }
        ),
          brandCard(
              image: "assets/images/Cando_Style_logo.png",
              title: "Cando Style",
              subTitle: "CANDO Styles is the leading and most popular apparel marketing company in Bangladesh. It incorporates the love and embrace the lifestyle, quality, and design, together with the T-shirt, Polo shirt, Basic Woven Shirt, Jeans pant and Bangladeshi character whose source is in our nature as people and as a fashion house – energetic, colorful, urban, free, happy, and sexy, with a pinch of chutzpah.",
              onTap: (){
                Get.to(()=>const CandoStyle(),transition:Transition.cupertino,duration: const Duration(seconds:1) );
              }
          ),
        ],
      ) ,
    );
  }

  Container brandCard({required String image,required String title,required String subTitle,required VoidCallback onTap }) {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image or logo
          SizedBox(
            width: Get.width*0.3,
            child: Image.asset(image),
          ),
          //Title
          const SizedBox(height: 20,),
          Text(title,style: TextStyle(color: kTextColor,fontSize: Get.width*0.05,fontWeight: FontWeight.w600),),
          const SizedBox(height: 15,),
          //Sub Title
          Text(
            subTitle,
            maxLines: 3,

            style: TextStyle(
              fontSize: Get.width*0.03,
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: OutlinedButton(
                onPressed: onTap,
                style:ButtonStyle(
                    textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 20,)),
                    maximumSize: const MaterialStatePropertyAll(Size(700,40)),
                    fixedSize: MaterialStatePropertyAll(Size(Get.width, 40)),
                    overlayColor:MaterialStatePropertyAll(Colors.red.withOpacity(0.2)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                ),
                child: const Text("View More")),
          )
        ],
      ),
    );
  }
}