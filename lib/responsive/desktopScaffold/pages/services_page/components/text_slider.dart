import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mkbuzz/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TextSlider extends StatefulWidget {
  const TextSlider({Key? key}) : super(key: key);

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  int activeIndex=0;
  List <Widget> text=[
    const BuildRichText(
      title:"The Art and The Science\n\n",
      description: "At Marketingbaz, marketing research is never just facts, patterns, predications or data. It’s a science; a study of not just the marketplace, but of the consumer as a person. It is also an art, in making sense of the data, information and communicating it insightfully for marketing action.",
    ),
    const BuildRichText(
      title:"The Tools Don't\nSubstitute The Thinking\n\n",
      description: "We believe in thinking with clients throughout the process from initial contact to delivery of findings. It does not stop there. Good research findings should facilitate the whole process from product development to brand fulfillment.",
    ),
    const BuildRichText(
      title:"The Best Clients Are For Life\n\n",
      description: "Almost all of the clients who were with us on day one are still working with us today!",
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
            //aspectRatio: 2,
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
    effect: WormEffect(
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
    return AutoSizeText.rich(
      TextSpan(children: [
              TextSpan(text: title2,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: kPrimaryLightColor)),
              TextSpan(text: title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: kTextLightColor)),
              TextSpan(text: description,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: kTextLightColor.withOpacity(0.5))),
      ]),
    );
  }
}
