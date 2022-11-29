import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        leftToRightCard(
          image: "assets/images/Digital_marketing.png",
          title: "Digital Marketing",
          description: "Digital marketing is the component of marketing that uses the Internet and online based digital technologies such as desktop computers, mobile phones and other digital media and platforms to promote products and services. Its development during the 1990s and 2000s changed the way brands and businesses use technology for marketing. As digital platforms became increasingly incorporated into marketing plans and everyday life, and as people increasingly use digital devices instead of visiting physical shops,digital marketing campaigns have become prevalent, employing",
        ),
        rightToLeftCard(
          image: "assets/images/Search_Engine_Marketing(SEM).png",
          title: "Search Engine Marketing(SEM)",
          description: " is a form of Internet marketing that involves the promotion of websites by increasing their visibility in search engine results pages (SERPs) primarily through paid advertising.SEM may incorporate search engine optimization (SEO), which adjusts or rewrites website content and site architecture to achieve a higher ranking in search engine results pages to enhance pay per click (PPC) listings and increase the Call to action (CTA) on the website.",
        ),
        leftToRightCard(
          image: "assets/images/Social_Media_Marketing(SMM).png",
          title: "Social Media Marketing(SMM)",
          description: " is the use of social media platforms and websites to promote a product or service.[1] Although the terms e-marketing and digital marketing are still dominant in academia, social media marketing is becoming more popular for both practitioners and researchers.[2] Most social media platforms have built-in data analytics tools, enabling companies to track the progress, success, and engagement of ad campaigns. Companies address a range of stakeholders through social media marketing, including current and potential customers, current and potential employees.",
        ),
        rightToLeftCard(
          image: "assets/images/Social Media Management(SMM).png",
          title: "Social Media Management(SMM)",
          description: " is the process of managing your online presence on social media platforms. Social media managers will use their experience, plus tools and services to create and publish content, interact with users, and analyze performance.",
        ),
        leftToRightCard(
          image: "assets/images/Search_Engine_Optimization(SEO).png",
          title: "Search Engine Optimization(SEO)",
          description: " is the process of improving the quality and quantity of website traffic to a website or a web page from search engines. SEO targets unpaid traffic (known as 'natural' or 'organic' results) rather than direct traffic or paid traffic. Unpaid traffic may originate from different kinds of searches, including image search, video search, academic search, news search, and industry-specific vertical search engines.",
        ),
        rightToLeftCard(
          image: "assets/images/Creative_&_Graphic_Design.png",
          title: "Creative & Graphic Design",
          description: " Creative design involves using computer-generated imagery and digital animation to visualise a product. It aims to produce unique and memorable designs that stand out so that customers may easily identify a brand or product. Creative design had become increasingly important in the modern world, where each day numerous products are launched into the market. In this article, we discuss what creative design is, who creative designers are, what they do and the skills required to become one.",
        ),
        leftToRightCard(
          image: "assets/images/Influenced_Marketing.png",
          title: "Influencer Marketing",
          description: "Influencer marketing (also known as influence marketing) is a form of social media marketing involving endorsements and product placement from influencers, people and organizations who have a purported expert level of knowledge or social influence in their field. Influencers are someone (or something) with the power to affect the buying habits or quantifiable actions of others by uploading some form of original—often sponsored—content to social media platforms like Instagram, YouTube, Snapchat or other online channels.Influencer marketing (also known as influence marketing) is a form of social media marketing involving endorsements and product placement from influencers, people and organizations who have a purported expert level of knowledge or social influence in their field. Influencers are someone (or something) with the power to affect the buying habits or quantifiable actions of others by uploading some form of original—often sponsored—content to social media platforms like Instagram, YouTube, Snapchat or other online channels.",
        ),
      ],
    );
  }

  Container leftToRightCard({required String image,required String title,required String description}) {
    return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Digital
              Container(
                height: Get.width * 0.2,
                width: Get.width * 0.2,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    image:DecorationImage(
                        image: AssetImage(
                            image))),
              ),
              SizedBox(
                width: Get.width * 0.2,
              ),

              SizedBox(
                width: Get.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    AutoSizeText(
                      title,
                      style: const TextStyle(fontSize: 40),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AutoSizeText.rich(
                        textAlign: TextAlign.justify,
                        maxLines: 6,
                        TextSpan(children: [
                          TextSpan(
                              text: "$title: ",
                              style: const TextStyle(color: Colors.red)),
                          TextSpan(
                            text:
                            description,
                          )
                        ]))
                  ],
                ),
              ),
            ],
          ),
        );
  }

  Container rightToLeftCard({required String image,required String title,required String description}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Digital

          SizedBox(
            width: Get.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                AutoSizeText(
                  title,
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 20,),
                AutoSizeText.rich(
                    textAlign: TextAlign.justify,
                    maxLines: 6,
                    TextSpan(children: [
                      TextSpan(
                          text: "$title: ",
                          style: const TextStyle(color: Colors.red)),
                      TextSpan(
                        text:
                        description,

                      )
                    ]))
              ],
            ),
          ),
          SizedBox(width: Get.width * 0.2,),
          Container(
            height: Get.width * 0.2,
            width: Get.width * 0.2,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                image:  DecorationImage(
                    image: AssetImage(
                        image))),
          ),
        ],
      ),
    );
  }
}
