import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class AboutMarketingbaz extends StatelessWidget {
  const AboutMarketingbaz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: 300,
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
                  text: const TextSpan(
                      style: TextStyle(fontSize: 40, color: kTextColor),
                      children: [
                    TextSpan(text: "About "),
                    TextSpan(
                        text: "Marketingbaz",
                        style: TextStyle(color: kPrimaryColor))
                  ])),
              const SizedBox(height: 10,),
              SizedBox(
                width: 500,
                child: SelectableText(
                  "Marketing and Business Consultants .Marketingbaz is a leading marketing and business-consultant firm based in Bangladesh made up of aproactive, strategist, dynamic, and enthusiastic team.We understand your live problem in your business, andwe serve it by our consultancy. Our services range fromnational brands to global companies. We habituate totake challenge and find out our client’s problems forproper Business intelligence Solutions.",
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(color: kTextColor.withOpacity(0.7), fontSize: 18),
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "Our motto is, raise your business.",
                style:
                    TextStyle(color: kTextColor.withOpacity(0.7), fontSize: 18),
              ),
              const SizedBox(height: 10,),
              Text(
                "Philosophy is Simplicity.",
                style:
                    TextStyle(color: kTextColor.withOpacity(0.7), fontSize: 18),
              ),
            ],
          ),
        ));
  }
}