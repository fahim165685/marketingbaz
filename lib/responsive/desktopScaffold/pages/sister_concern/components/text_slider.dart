import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mkbuzz/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TextSlider extends StatefulWidget {
  const TextSlider({Key? key}) : super(key: key);

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  int activeIndex=0;
  List <Widget> text=[
    const BuildRichText(
      title:"Yes Event Management\n\n",

      description: "YES Event Management is process of creation and development of corporate or personal events. Like as conferences, festivals, ceremonies, corporate party, band launching, BTL activities, concerts, weddings, formal parties, or conventions. It involves on research the band & identify the target audience, create...",
    ),
    const BuildRichText(
      title:"Cando Style\n\n",
      description: "CADNDO Style is the leading and most popular apparel Marketing Company in Bangladesh",
    ),
    const BuildRichText(
      title2: "Marketingbuz ",
      title:" + Thinker\n\n",
      description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diamnonummy nibh euismod tincidunt ut laoreet dolore magna aliquam eratvolutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullam-corper suscipit lobortis nisl ut aliquip",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount:text.length ,
          itemBuilder: (context, index, realIndex) {
            final texts = text[index];
            return Container(
              padding:const EdgeInsets.all(5),
              margin:const EdgeInsets.symmetric(horizontal: 10),
              child: texts,
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            height: 200,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
        buildIndicator(),
      ],
    );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex:activeIndex ,
    count: text.length,
    effect: ExpandingDotsEffect(
        dotWidth: 12,
        dotHeight: 12,
        activeDotColor: kPrimaryLightColor,
        dotColor: kTextLightColor.withOpacity(0.2)),
  );
}

class BuildRichText extends StatelessWidget {
  final String title;
  final String title2;
  final String description;

  const BuildRichText({
    super.key,
    required this.title,
    this.title2="",
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
          children: [
            //Title
            TextSpan(text: title2,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: kPrimaryLightColor)),
            TextSpan(text: title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: kTextLightColor)),
            TextSpan(text: description,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: kTextLightColor.withOpacity(0.5))),

          ]
      ),
    );
  }
}
