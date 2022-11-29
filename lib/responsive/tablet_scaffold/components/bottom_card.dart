import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List socialItem = [
      ///note  [Name  ,  image Pat ,   Link] [Link = "https://www.example.com"]
      ["assets/icons/facebook_icon.png", "https://www.facebook.com/marketingbaz"],
      ["assets/icons/instagram_icon.png", "https://www.instagram.com"],
      ["assets/icons/twitter_icon.png", "https://www.twitter.com/marketingbaz"],
      ["assets/icons/linked_In_icon.png", "https://www.linkedin.com"],
      ["assets/icons/youtube_icon.png", "https://www.youtube.com/channel/UC4XhY-4waZF8Y8w5X9OvFHQ"],
    ];
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: Get.width,
        //height: 250,
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: kTextColor.withOpacity(0.4)))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Logo
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Image.asset("assets/icons/Marketing_baz_Logo.png",
                          width:Get.width*0.5 ),
                      const SizedBox(
                        height: 5,
                      ),
                      const FittedBox(
                          child: Text("Marketingbaz Ltd.©.All Rights Reserved.")),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(socialItem.length, (index) => socialIcons
                              (link: socialItem[index][1], icon: socialItem[index][0]))
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // //Pages
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(" Pages",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700)),
                      TextButton(
                          onPressed: () {
                          },
                          child: Text(
                            "> Home",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6)),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "> About",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6)),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "> Services",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6)),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "> Contact",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6)),
                          )),
                    ],
                  ),
                ),

                // ///Contract us
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Contact",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(
                        height: 5,
                      ),
                      SelectableText("017412225",
                          style: TextStyle(
                              fontSize: 15, color: Colors.black.withOpacity(0.6))),
                      const SizedBox(
                        height: 10,
                      ),
                      SelectableText("Marketing01@.gmail.com",
                          style: TextStyle(
                              fontSize: 15, color: Colors.black.withOpacity(0.6))),
                      const SizedBox(
                        height: 10,
                      ),
                      SelectableText(
                          "Cando Home, Thanthaniya Bank Para,\nBogura Sadar, Bogura.",
                          style: TextStyle(
                              fontSize: 15, color: Colors.black.withOpacity(0.6))),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SelectableText("© 2008- 2022 | Marketingbuz | ALL RIGHTS RESERVED",style: TextStyle(
                fontSize: 12,
                color: Colors.grey.withOpacity(0.8)
            ),)
          ],
        ));
  }

  Widget socialIcons({required String link,required String icon}) {

    Future<void> launchUri(url) async {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalNonBrowserApplication,
      )) {
        throw 'Could not launch $uri';
      }
    }

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Get.width*0.01),
      child: InkWell(
        focusNode:FocusNode() ,
        onTap:(){launchUri(link);} ,
        child: Image.asset(
          icon,
          width: 20,
        ),
      ),
    );
  }
}