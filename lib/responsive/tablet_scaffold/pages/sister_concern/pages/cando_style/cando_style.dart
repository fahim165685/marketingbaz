import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/components/contact_us.dart';

class CandoStyle extends StatelessWidget {
  const CandoStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String aboutText =
        "It incorporates the love and embrace the lifestyle, quality, and design, together with the T-shirt, Polo shirt, Basic Woven Shirt, Jeans pant and Bangladeshi character whose source is in our nature as people and as a fashion house – energetic, colorful, urban, free, happy, and sexy, with a pinch of chutzpah\n"
        "Cando is proud to lead a productive and ongoing dialogue between its local design and the people who live here in Bangladesh. As a youthful company for fashion and lifestyle, we are committed to our values and provide our customers a unique and exciting experience in all areas of personal appearance and lifestyle. We see in this a commitment of respect and appreciation for our customers.\n"
        "Our collections harmonize fashionable design, sophistication, and excitement, with quality, richness, and care, a combination that gives our customers complete confidence in their choices, and fully addresses their fashion needs\n"
        "We also offer complementary collections – shoes and bags, lingerie, glasses, jewelry, and even bicycles and other accessories to accompany our customers during all of life’s moments – in the daily routine and in the evening, in the small moments and in the important, exciting and unforgettable ones\n"
        "We consider it an extremely important goal to continue to lead fashion in Israel through the next decade, to closely accompany our customers in all areas of appearance and lifestyle, through the design and sale of fashion and lifestyle products of the first rank, and at fair and accessible prices\n"
        "Cando was established in 2018. and used the online and off-line marketing system\n"
        "Full /Short Sleeve Basic Shirt, T-Shirt, Polo Shirt, Jeans Pant are mainly marketed by CANDO Styles.\n"
        "Our target market area is Bogra. Actually the customer of CANDO will be aristocratic people, Business man, all of students, job holders and others in Bogra City those are really chosen highly quality of garments produc";

    ScrollController controller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cando Style".toUpperCase(),
            style: TextStyle(color: Colors.grey)),
        centerTitle: true,
        actions: [
          Opacity(
            opacity: 0.1,
            child:
                Image.asset("assets/images/Cando_Style_logo.png", width: 100),
          )
        ],
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Get.back(closeOverlays: true);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: Get.width * 0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Cando_style_bg.png"),
                      alignment: Alignment.centerLeft),
                  color: Colors.white),
              child: Stack(children: [
                //logo
                Positioned(
                  left: 5,
                  top: 5,
                  child: SizedBox(
                    width: Get.width * 0.15,
                    child: Image.asset("assets/images/Cando_Style_logo.png"),
                  ),
                ),
                Positioned(
                    right: 5,
                    top: 30,
                    child: SizedBox(
                      width: Get.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "CANDO STYLE\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Get.width * 0.06),
                                children: [
                                  TextSpan(
                                      text:
                                          "is the leading and most popularapparel marketing company in Bangladesh.\n",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: Get.width * 0.02)),
                                ]),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.jumpTo(190);
                            },
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50))),
                                backgroundColor:
                                    const MaterialStatePropertyAll(Colors.red)),
                            child: const Text("LEARN MORE"),
                          )
                        ],
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "About Cando",
                style: TextStyle(
                    fontSize: Get.width * 0.06, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "CANDO Styles is the leading and most popular apparel marketing company in Bangladesh.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(aboutText),
            ),
            const SizedBox(
              height: 50,
            ),
            const ContactUs(
              emile: 'marketingbuzz265@gmail.com',
              location: "Dhaka ,bangladesh",
              logo: "assets/images/Cando_Style_logo.png",
              phone: "01234567891",
              link: [
                "https://www.facebook.com/marketingbaz",
                "https://www.instagram.com",
                "https://www.twitter.com/marketingbaz",
                "https://www.linkedin.com",
                "https://www.youtube.com/channel/UC4XhY-4waZF8Y8w5X9OvFHQ",
              ],
            ),
          ],
        ),
      ),
    );
  }

}
