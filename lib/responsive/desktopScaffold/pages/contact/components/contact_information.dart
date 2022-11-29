import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 650,
      width: 550,
      decoration: BoxDecoration(
          color: const Color(0XFF3e2093),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          const Positioned(
            bottom: -150,
            right: -150,
            child: CircleAvatar(
              backgroundColor: Color(0XFFfa949d),
              radius: 200,
            ),
          ),
          const Positioned(
              bottom: 120,
              right: 120,
              child: Opacity(
                opacity: 0.9,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Color(0xFF7e53f9),
                ),
              )),
          Positioned(
            top: 40,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact Information",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SelectableText(
                  "Fill out the form and our team will contact\nyou within 12 hours.",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0XFFc1b9dc),
                    fontSize: 18,
                  ),
                ),
                iconText(text: "01741225415", icon: Icons.phone),
                iconText(
                    text: "marketingbaz01@gmail.com",
                    icon: Icons.mail),
                iconText(
                    text:
                    "Cando Home, Thanthaniya Bank Para,\nBogura Sadar, Bogura.",
                    icon: Icons.location_on),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 40,
            child: Row(
              children:  [
                socialMediaIcons(
                    link: "https://www.facebook.com/marketingbaz",
                    icon: "assets/icons/facebook_icon.png"),
                socialMediaIcons(
                    link: "",
                    icon: "assets/icons/twitter_icon.png"),
                socialMediaIcons(
                    link: "",
                    icon: "assets/icons/linked_In_icon.png"),
                socialMediaIcons(
                    link: "",
                    icon: "assets/icons/youtube_icon.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget iconText({required String text, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0XFFfa949d),
          ),
          const SizedBox(
            width: 10,
          ),
          SelectableText(
            text,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  Widget socialMediaIcons({
    required String link,
    required String icon,
  }) {
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
      padding: const EdgeInsets.only(right: 5),
      child: ElevatedButton(
        onPressed: () {
          launchLink(link);
        },
        style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(40, 40)),
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            elevation: MaterialStatePropertyAll(0),
            overlayColor: MaterialStatePropertyAll(Color(0XFFfa949d)),
            shape: MaterialStatePropertyAll(CircleBorder())),
        child: Image.asset(
          icon,
          color: Colors.white,
          height: 20,
        ),
      ),
    );
  }
}
