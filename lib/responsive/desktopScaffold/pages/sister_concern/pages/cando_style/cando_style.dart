import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/desktopScaffold/pages/sister_concern/pages/yes_event_management/components/contact_us.dart';

class CandoStyle extends StatelessWidget {
  const CandoStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String aboutText =
        "It incorporates the love and embrace the lifestyle, quality, and design, together with the T-shirt, Polo shirt, Basic Woven Shirt, Jeans pant and Bangladeshi character whose source is in our nature as people and as a fashion house – energetic, colorful, urban, free, happy, and sexy, with a pinch of chutzpah.\n\n"
        "Cando is proud to lead a productive and ongoing dialogue between its local design and the people who live here in Bangladesh. As a youthful company for fashion and lifestyle, we are committed to our values and provide our customers a unique and exciting experience in all areas of personal appearance and lifestyle. We see in this a commitment of respect and appreciation for our customers.\n\n"
        "Our collections harmonize fashionable design, sophistication, and excitement, with quality, richness, and care, a combination that gives our customers complete confidence in their choices, and fully addresses their fashion needs.\n"
        "We also offer complementary collections – shoes and bags, lingerie, glasses, jewelry, and even bicycles and other accessories to accompany our customers during all of life’s moments – in the daily routine and in the evening, in the small moments and in the important, exciting and unforgettable ones.We consider it an extremely important goal to continue to lead fashion in Israel through the next decade, to closely accompany our customers in all areas of appearance and lifestyle, through the design and sale of fashion and lifestyle products of the first rank, and at fair and accessible prices.\n\n"
        "Cando was established in 2018. and used the online and off-line marketing system.Full /Short Sleeve Basic Shirt, T-Shirt, Polo Shirt, Jeans Pant are mainly marketed by CANDO Styles.\n\n"
        "Our target market area is Bogra. Actually the customer of CANDO will be aristocratic people, Business man, all of students, job holders and others in Bogra City those are really chosen highly quality of garments product\n\n"
        "CANDO Styles\n\n"
        "Embrace the lifestyle";

    ScrollController controller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cando Style".toUpperCase(),
            style: const TextStyle(color: Colors.grey)),
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///logo
                  Image.asset(
                    "assets/images/Cando_Style_logo.png",
                    width: 400,
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  ///Name
                  RichText(
                      text: const TextSpan(
                          text: "CANDO ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 50,
                          ),
                          children: [
                        TextSpan(
                            text: "STYLE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 50,
                            )),
                      ])),

                  const SizedBox(
                    height: 20,
                  ),

                  ///Divider
                  Container(
                    height: 5,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(colors: [
                          Colors.red.withOpacity(0.5),
                          Colors.white
                        ])),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "About Cando",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "CANDO Styles is the leading and most popular apparel marketing company in Bangladesh.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SelectableText(aboutText,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff777777))),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            const ContactUs(
              locationLink: "https://goo.gl/maps/VhJx7ZLcSPUvXKGj9",
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
