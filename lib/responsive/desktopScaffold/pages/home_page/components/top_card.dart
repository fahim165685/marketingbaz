import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

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
              bottom: 100,
              child: SizedBox(
                  width: Get.width * 0.6,
                  child: Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "assets/icons/MB_Logo.png",
                      )))),

          ///Bottom Red Container & Text
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: Get.width * 0.8,
              height: 150,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      topLeft: Radius.circular(100))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.access_time_outlined,
                              color: kTextLightColor, size: 30),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 220,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const [
                                Text("Timing",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: kTextLightColor)),
                                SizedBox(height: 8,),
                                Text(
                                  "To invest Time for better\nSuccess",
                                  textAlign: TextAlign.justify,
                                  maxLines: 3,
                                  style: TextStyle(
                                      color: kTextLightColor,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.add_chart,
                              color: kTextLightColor, size: 30),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 220,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: const [
                                Text("Tendency",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: kTextLightColor)),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "A world Class business solution\nplatform.",
                                  textAlign: TextAlign.justify,
                                  maxLines: 3,
                                  style: TextStyle(
                                      color: kTextLightColor,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ///Company Onur image
          Positioned(
              bottom: 0,
              right: 50,
              child: SizedBox(
                width: Get.width * 0.33,
                child: Image.asset("assets/images/IMG_1.png"),
              )),

          Positioned(
              top: 120,
              left: 50,
              child: SizedBox(
                height: 210,
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text("Team Work",
                        style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w200)),
                    SizedBox(height: 15,),
                    Text(
                      "We Made Up Of A\nProcreative, Strategist\nDynamic And Enthusiastic\nTeam",
                      maxLines: 3,
                      style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}


