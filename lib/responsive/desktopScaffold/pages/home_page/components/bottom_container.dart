import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List socialItem=[
      [ "Facebook","assets/icons/facebook_icon.png","https://www.facebook.com/marketingbaz"],
      [ "Instagram","assets/icons/instagram_icon.png","https://www.instagram.com"],
      [ "Twitter","assets/icons/twitter_icon.png","https://www.twitter.com/marketingbaz"],
      [ "LinkedIn","assets/icons/linked_In_icon.png","https://www.linkedin.com"],
      [ "YouTube","assets/icons/youtube_icon.png","https://www.youtube.com/channel/UC4XhY-4waZF8Y8w5X9OvFHQ"],
    ];
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: Get.width,
        height:250,
        decoration: BoxDecoration(border: Border(top: BorderSide(color: kTextColor.withOpacity(0.4)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Logo
            Column(
              children: [
                Image.asset("assets/icons/Marketing_baz_Logo.png",
                    width: 300),
                const SizedBox(
                  height: 20,
                ),
                const Text("Marketingbaz Ltd.©.All Rights Reserved."),
              ],
            ),
            ///Pages
            SizedBox(
              width: Get.width*0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(" Pages",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),

                  const SizedBox(height: 20,),

                  TextButton(onPressed: (){}, child: Text("Home",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)),

                  TextButton(onPressed: (){}, child: Text("About",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)),

                  TextButton(onPressed: (){}, child: Text("Services",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)),

                  TextButton(onPressed: (){}, child: Text("Contact",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)),


                ],
              ),
            ),
            ///Contract us
            SizedBox(
              width: Get.width*0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text("Contact",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
                  const SizedBox(height: 25,),
                  SelectableText("017412225",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6))),
                  const SizedBox(height: 10,),
                  SelectableText("Marketing01@.gmail.com",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6))),
                  const SizedBox(height: 10,),
                  SelectableText("Cando Home, Thanthaniya Bank Para,\nBogura Sadar, Bogura.",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6))),

                ],
              ),
            ),
            SizedBox(
              width: Get.width*0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("  Social",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
                   const SizedBox(height: 20,),
                  ...List.generate(socialItem.length, (index) =>  SocialMediaIcons(
                    name: socialItem[index][0],
                    icon: socialItem[index][1],
                    press:socialItem[index][2],
                  ),)
                ],
              ),
            )
          ],
        ));
  }
}

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key, required this.press, required this.icon, required this.name});
  final String press, icon,name;

  Future<void> _launchUrl(url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $uri';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: (){
          _launchUrl(press);
        },
        radius: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 20,
              ),
              const SizedBox(width: 5),
              Text(name,style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }
}