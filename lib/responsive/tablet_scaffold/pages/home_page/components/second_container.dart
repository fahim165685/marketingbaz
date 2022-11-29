import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Padding(
             padding:  EdgeInsets.symmetric(horizontal: 30),
             child: AutoSizeText(
              "A Top-Rated Trusted Company in\nThe country",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
          ),
           ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AutoSizeText(
              "To Provide best Service/ Training\n# Soft Skill\n# Management Skill\n# Technical Skill",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.8)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kPrimaryLightColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                ),
                child: const Text("LEARN MORE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50
            ),
            width: Get.width,
            color: Colors.black.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FittedBox(
                  child: Text(
                    "FREE RISK ANALYSIS AND CONSULTATION",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                AutoSizeText.rich(TextSpan(
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    children: [
                      TextSpan(
                          text: "MARKETINGBUZ ",
                          style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: "Promises to Provide The Best Service",
                          style: TextStyle(color: Colors.black))
                    ])),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  "Marketing and Business Consultants .Marketingbaz is a leading marketing and business-consultant firm based in Bangladesh made up of aproactive, strategist, dynamic, and enthusiastic team...",
                  maxLines: 4,
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
