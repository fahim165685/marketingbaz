import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class AnyQuestionsYouWant extends StatelessWidget {
  const AnyQuestionsYouWant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 250,
      color: kSedentaryColor,
      child: Stack(
        children: [
          const Positioned(
              left: 0,
              right: 0,
              top: 50,
              child: Center(
                  child: Text(
                "Any questions you want?",
                style: TextStyle(
                    color: kTextLightColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ))),
          Positioned(
              left: 0,
              right: 0,
              bottom: 130,
              child: Center(
                  child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: kTextLightColor.withOpacity(0.8),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                    children: [
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Container(
                            color: kPrimaryColor,
                            height: 2,
                            width: 80,
                          )),
                      const TextSpan(text: " IN LESS THAN AN HOURS "),
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Container(
                            color: kPrimaryColor,
                            height: 2,
                            width: 80,
                          )),
                    ]),
              ))),
          const Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Center(
                  child: Text(
                "CALL: 01712-345678",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: kTextLightColor),
              ))),
          Positioned(
              bottom: 0,
              child: Container(
                width: Get.width,
                height: 50,
                color: kPrimaryLightColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _richText(text: " 24 hour service,"),
                    _richText(text: " Professional,"),
                    _richText(text: " Fast Amd Creative "),
                    _richText(text: " Whmis Certified"),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  RichText _richText({required String text}) {
    return RichText(
        text: TextSpan(
            style:
                const TextStyle(color: kTextLightColor, fontWeight: FontWeight.w400),
            children: [
          const WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(Icons.done,color:kTextLightColor,)),
          TextSpan(text: text),
        ]));
  }
}
