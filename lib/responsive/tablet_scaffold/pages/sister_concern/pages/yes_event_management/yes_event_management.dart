import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/components/contact_us.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/pages/yes_event_management/components/our_services.dart';

class YesEventManagement extends StatelessWidget {
  const YesEventManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();

    const String about = "Yes Event Management is one of the best service management company owned by Marketingbaz based in Bangladesh made up of a Proactive, strategist, dynamic, and enthusiastic team who are highly experienced for planning or executing the events.We habituate to take challenge and responsibility for our client’s programs for proper event's intelligence Solutions.\n"
        "We serve Catering Services Wedding planning, Birthday Parties and Corporate Events, such as Product Launches, Training Programs, Brand Activation Events, Conference, Corporate Anniversary, Meetings, Seminars, Grand Opening Programs, Dealers Meet and Marketing Programs such as BTL Activities.\n\n"
        "Our motto is, Excel Your Expectation.\n\n"
        "Our motto is, Excel Your Expectation.\n\n";

    return Scaffold(
      appBar: AppBar(
        title: Text("Yes Event Management".toUpperCase(),
            style: const TextStyle(color: Colors.grey)),
        centerTitle: true,
        actions: [
          Opacity(
            opacity: 0.1,
            child: Image.asset("assets/images/YEM_Logo.png", width: 100),
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
            Container(
              width: Get.width,
              height: Get.width * 0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/Yes_Event_Management_bg.png"),
                      alignment: Alignment.centerLeft),
                  color: Colors.white),
              child: Stack(children: [
                //logo
                Positioned(
                  left: 5,
                  top: 5,
                  child: SizedBox(
                    height: Get.width * 0.1,
                    child: Image.asset("assets/images/YEM_Logo.png"),
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
                                text: "Yes Event Management\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: Get.width * 0.05),
                                children: [
                                  TextSpan(
                                      text:
                                      "is the leading and most popularapparel marketing company in Bangladesh.\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Best Event Management Company in Jaleswaritola, Bogura, Bangladesh\nRank#1 Event Planners Jaleswaritola, Bogura, Bangladesh",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xff777777), fontSize: Get.width * 0.03),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 4,
                      width: Get.width * 0.3,
                      decoration: BoxDecoration(
                        gradient:
                            const LinearGradient(colors: [Colors.red, Colors.white]),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'About ',
                          style: TextStyle(
                              fontSize: Get.width * 0.04,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          children: const [
                        TextSpan(
                          text: "Yes Event Management:",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w600),
                        )
                      ])),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 4,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      gradient:
                          const LinearGradient(colors: [Colors.red, Colors.white]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  const Text(about),
                  const SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   'Event Management:',
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: Get.width * 0.04),
                  // ),
                  // buildRichText(),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // Text(
                  //   'Corporate Event Management:',
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: Get.width * 0.04),
                  // ),
                  // buildCorporateEventManagementText(),
                  const OurServices(),
                ],
              ),
            ),
            const ContactUs(
              phone: "880 1741-225415",
              logo: "assets/images/YEM_Logo.png",
              location: "shahalam2093@gmail.com",
              emile: "shahalam2093@gmail.com",
              link: [
                "https://www.facebook.com/yesembd",
                "https://www.instagram.com/yesembd",
                "https://www.twitter.com/yesembd",
                "https://www.linkedin.com/yesembd",
                "https://www.youtube.com/",
              ],
            ),
          ],
        ),
      ),
    );
  }
  //
  // SelectableText buildRichText() {
  //   return const SelectableText.rich(
  //       style: TextStyle(
  //         fontSize: 15,
  //         color: Color(0xff777777),
  //       ),
  //       TextSpan(children: [
  //         TextSpan(
  //             text: "Event Management ",
  //             style: TextStyle(
  //               fontWeight: FontWeight.w600,
  //             )),
  //         TextSpan(
  //             text:
  //                 "is process of creation and development of corporate or personal events. Like as conferences, festivals, ceremonies, corporate party, band launching, BTL activities, concerts, weddings, formal parties, or conventions. It involves on research the band & identify the target audience, "),
  //         TextSpan(
  //             text: "create an event concept,",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //           text:
  //               "coordinate the technical aspects before starting the event.\n\n\n",
  //         ),
  //         TextSpan(text: 'As '),
  //         TextSpan(
  //             text: "professional event manager, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //             text:
  //                 "we help our client to plans and executes smaller or larger scale of event. We taking responsibility for the creative, technical, and logistical elements. This includes overall "),
  //         TextSpan(
  //             text: "event design, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(text: "script writing, "),
  //         TextSpan(
  //             text: "logistics, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(text: "budgeting, negotiation, audio-visual production, "),
  //         TextSpan(
  //             text: "marketing and communication strategy ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(text: "brand building and client service"),
  //       ]));
  // }
  //
  // SelectableText buildCorporateEventManagementText() {
  //   return const SelectableText.rich(
  //       style: TextStyle(
  //         fontSize: 15,
  //         color: Color(0xff777777),
  //       ),
  //       TextSpan(children: [
  //         TextSpan(
  //           text:
  //               "Corporate event Management includes corporate team building, corporate awards events, corporate holiday celebration events, ",
  //         ),
  //         TextSpan(
  //             text: "corporate seminars ",
  //             style: TextStyle(
  //               fontWeight: FontWeight.w600,
  //             )),
  //         TextSpan(
  //             text: "and educational events, corporate charity events. As "),
  //         TextSpan(
  //             text: "Corporate Event Management Company ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //           text:
  //               "Bangladesh we manage/organize Conferences, Seminars, Team Building Events, Press Conferences, Business / Corporate Dinners, Shareholder / ",
  //         ),
  //         TextSpan(
  //             text: "Corporate Board Meetings, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //             text:
  //                 "Year End Functions, Trade Shows / Expos, Corporate Golf Days, Outbound / Inbound Educational & Corporate Tours, Product Launches, Executive Retreats event. We also provide all the logistics in a "),
  //         TextSpan(
  //             text: "Corporate Event, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //             text:
  //                 "it including Banners & Glow Signs design and print, Hoarding’s rental, AV equipment rental, LED Screen, "),
  //         TextSpan(
  //             text: "Video and photography services, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //             text:
  //                 "Live streaming equipment, Sound System rental, Stage / Set design, Event Interior services etc.  We are very skilled to do Promotions, "),
  //         TextSpan(
  //             text: "Road Shows, ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //         TextSpan(
  //             text:
  //                 "Canter Activates, Dealer, Customer / Dealer Interaction Programs, Trade, Retailers Meets, Staff Programs, Merchandising and In Shop Promotions and "),
  //         TextSpan(
  //             text: "BTL Activities. ",
  //             style: TextStyle(fontWeight: FontWeight.w600)),
  //       ]));
  // }
}
