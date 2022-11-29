import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  final List link;
  final String logo;
  final String phone;
  final String emile;
  final String location;
  const ContactUs({
    Key? key,
    required this.link,
    required this.logo,
    required this.phone,
    required this.emile,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List icon = [
      "assets/icons/facebook_icon.png",
      "assets/icons/instagram_icon.png",
      "assets/icons/twitter_icon.png",
      "assets/icons/linked_In_icon.png",
      "assets/icons/youtube_icon.png",
    ];
    final List socialLink = link;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          border: Border.all(color: Colors.black)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: Get.width * 0.1,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///logo
                SizedBox(
                  height: Get.width * 0.3,
                  child: Image.asset(logo),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ...List.generate(
                        icon.length,
                        (index) => socialIcon(
                              icon: icon[index],
                              link: socialLink[index],
                            ))
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: Get.width * 0.3,
            width: 2,
            color: Colors.black.withOpacity(0.2),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Contact",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 25,
                ),
                SelectableText(phone,
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.6))),
                const SizedBox(
                  height: 20,
                ),
                SelectableText(
                  emile,
                  style: TextStyle(
                      fontSize: 15, color: Colors.black.withOpacity(0.6)),
                  onTap: () async {
                    final Uri uri =
                        Uri.parse("https://goo.gl/maps/VhJx7ZLcSPUvXKGj9");
                    if (!await launchUrl(
                      uri,
                      mode: LaunchMode.externalNonBrowserApplication,
                    )) {
                      throw 'Could not launch $uri';
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SelectableText(location,
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.6))),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: Get.width * 0.3,
            width: 2,
            color: Colors.black.withOpacity(0.2),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Overige",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 25,
                ),
                SelectableText("Pivacy policy",
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.6))),
                const SizedBox(
                  height: 20,
                ),
                SelectableText("Algemene Voorwaarden",
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.6))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding socialIcon({required String link, required String icon}) {
    Future<void> launchLink(url) async {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalNonBrowserApplication,
      )) {
        throw 'Could not launch $uri';
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.01),
      child: InkWell(
          borderRadius: BorderRadius.circular(50),
          overlayColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          onTap: () {
            launchLink(link);
          },
          child: SizedBox(
              height: Get.width * 0.03,
              width: Get.width * 0.03,
              child: Image.asset(icon))),
    );
  }
}
