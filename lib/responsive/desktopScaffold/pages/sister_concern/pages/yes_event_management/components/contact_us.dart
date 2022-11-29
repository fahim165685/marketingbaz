import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  final List link;
  final String logo;
  final String phone;
  final String  emile;
  final String location;
  final String locationLink;
  const ContactUs({
    Key? key, required this.link, required this.logo, required this.phone, required this.emile, required this.location, required this.locationLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List  icon=[
      "assets/icons/facebook_icon.png",
      "assets/icons/instagram_icon.png",
      "assets/icons/twitter_icon.png",
      "assets/icons/linked_In_icon.png",
      "assets/icons/youtube_icon.png",
    ];
    final List socialLink= link;
    return Container(
      height: 300,
      width: Get.width,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
        ),
       border: Border.all(
         color: Colors.black,
         width: 2,
         strokeAlign: StrokeAlign.outside
       )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///logo
                    SizedBox(
                      height: 200,
                      child: Image.asset(logo),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        ...List.generate(icon.length,
                                (index) => socialIcon(
                              icon: icon[index],
                              link: socialLink[index],
                            ))
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("Contact",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
                    const SizedBox(height: 25,),
                    iconText(
                      onTap: (){},
                        text: phone, icon: Icons.phone_outlined),
                    const SizedBox(height: 20,),
                    iconText(
                        onTap: ()async{
                          final Uri uri = Uri.parse("https://mail.google.com/mail/u/0/#inbox?compose=new");
                          if (!await launchUrl(
                            uri,
                            mode: LaunchMode.externalNonBrowserApplication,
                          )) {
                            throw 'Could not launch $uri';
                          }

                        },
                        text: emile, icon: Icons.mail_outline_rounded),
                    const SizedBox(height: 20,),
                    iconText(
                      onTap: ()async{
                          final Uri uri = Uri.parse(locationLink);
                          if (!await launchUrl(
                            uri,
                            mode: LaunchMode.externalNonBrowserApplication,
                          )) {
                            throw 'Could not launch $uri';
                          }

                      },
                        text: location, icon: Icons.location_on_outlined),

                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("Others",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700)),
                    const SizedBox(height: 25,),
                    SelectableText("Privacy policy",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6))),
                    const SizedBox(height: 20,),
                    SelectableText("Terms and Conditions",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6))),

                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
  Widget iconText({required String text,required IconData icon,required VoidCallback onTap}){
    return SelectableText.rich(
         TextSpan(
            children: [
              WidgetSpan(alignment: PlaceholderAlignment.middle,child:IconButton(onPressed: onTap,icon: Icon(icon),)),
              TextSpan(text: " $text",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6)),
              )
            ]
        )
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
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
          borderRadius: BorderRadius.circular(50),
          overlayColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          onTap: () {
            launchLink(link);
          },
          child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(icon))),
    );
  }
}