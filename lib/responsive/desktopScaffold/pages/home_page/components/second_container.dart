import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    List item = [
      [
        kPrimaryLightColor,
        "assets/icons/SME-icon.png",
        "Search Engine Optimization(SEO)",
        "If you want to know what Search Engine Optimization(SEO) is, you will get the most out of this guide >"
      ],
      [
        Colors.black,
        "assets/icons/SMM_icon.png",
        "Social Media Marketing(SMM)",
        "If you want to know what Social Media Marketing (SMM) is, you will get the most out of this guide >"
      ],
      [
        kPrimaryLightColor,
        "assets/icons/App_Development.png",
        "Mobile App Development",
        "If you want to know what Social Media Marketing (SMM) is, you will get the most out of this guide >"
      ],
    ];
    return SizedBox(
      width: Get.width,
      height: Get.width * 0.5,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 50, vertical: 30),
              height: 250,
              width: 450,
              color: Colors.black.withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "FREE RISK ANALYSIS AND CONSULTATION",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                          children: [
                            TextSpan(
                                text: "MARKETINGBUZ ",
                                style: TextStyle(color: Colors.red)),
                            TextSpan(
                                text: "Promises to Provide The Best Service",
                                style: TextStyle(color: Colors.black))
                          ])),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      "Marketingbaz is a leading marketing and business-consultant firm based in Bangladesh made up of aproactive, strategist, dynamic, and enthusiastic team.We understand your live problem in your business, andwe serve it by our consultancy. Our services range fromnational brands to global companies. We habituate totake challenge and find out our client’s problems forproper Business intelligence Solutions.",
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ),

          Positioned(
              bottom: 0,
              left: 400,
              child: serviceCard(
                  color: item[0][0],
                  icon: item[0][1],
                  title: item[0][2],
                  subTitle: item[0][3])),
          Positioned(
              bottom: 100,
              left: 580,
              child: serviceCard(
                  color: item[1][0],
                  icon: item[1][1],
                  title: item[1][2],
                  subTitle: item[1][3])),
          Positioned(
              bottom: 200,
              left: 760,
              child: serviceCard(
                  color: item[2][0],
                  icon: item[2][1],
                  title: item[2][2],
                  subTitle: item[2][3])),
          Positioned(
              top: 80,
              left: 50,
              child: Container(
                padding:const EdgeInsets.all(5),
                height: 220,
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "A Top-Rated Trusted Company in The country",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "To Provide best Service/Training\n\n# Soft Skill \n# Management Skill\n# Technical Skill",
                      maxLines: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: (){
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(kPrimaryLightColor),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                        ),
                        child: const Text("LEARN MORE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),))
                  ],
                ),
              ))
        ],
      ),
    );
  }
  Container serviceCard({
    required Color color,
    required String icon,
    required String title,
    required String subTitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 180,
      width: 180,
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 35,
              child: Image.asset(
                icon,
                color: kTextLightColor,
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                color: kTextLightColor,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            subTitle,
            maxLines: 4,
            style: const TextStyle(
                color: kTextLightColor,
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}



