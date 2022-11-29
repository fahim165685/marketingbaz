import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class AboutMarketingbaz extends StatelessWidget {
  const AboutMarketingbaz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: Get.width*0.4,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/about_img_2.png"),
                alignment: Alignment.centerRight,
                opacity: 0.3)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: Get.width*0.06, color: kTextColor),
                      children: const [
                    TextSpan(text: "About "),
                    TextSpan(
                        text: "Marketingbaz",
                        style: TextStyle(color: kPrimaryColor))
                  ])),
              const SizedBox(height: 10,),
              SizedBox(
                width: Get.width*0.6,
                child: SelectableText(
                  "Marketing and Business Consultants .Marketingbaz is a leading marketing and business-consultant firm based in Bangladesh made up of aproactive, strategist, dynamic, and enthusiastic team.We understand your live problem in your business, andwe serve it by our consultancy. Our services range fromnational brands to global companies. We habituate totake challenge and find out our client’s problems forproper Business intelligence Solutions.",
                  //textAlign: TextAlign.justify,
                  style:
                      TextStyle(color: kTextColor.withOpacity(0.7), fontSize: Get.width*0.022),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "Our motto is, raise your business.",
                style:
                    TextStyle(color: kTextColor.withOpacity(0.7), fontSize: Get.width*0.022),
              ),
              const SizedBox(height: 8,),
              Text(
                "Philosophy is Simplicity.",
                style:
                    TextStyle(color: kTextColor.withOpacity(0.7), fontSize:  Get.width*0.022),
              ),
            ],
          ),
        ));
  }
}