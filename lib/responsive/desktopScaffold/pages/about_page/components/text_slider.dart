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
      title:"What matters,\nWhen it matters most\n\n",
      description: "Since our inception in 2014 we have held one belief – our sole aim is helping our clients understand consumers.Be it developing new products or communications, or crafting brand architectures, our belief is that everything flows from a deep and honest understanding of consumers' complex needs and desires",
    ),
    const BuildRichText(
      title:"The Marketingbuz Way\n\n",
      description: "The interpretation of findings, to us, must possess a deep empathy for the social context and clear understanding of the marketing issues. We are equipped with multi-disciplinary skills, enabling us to approach issues with a multi-dimensional perspective. We question your preconceptions about research and find ways to rethink things, not just fix things.",
    ),
    const BuildRichText(
      title2: "Marketingbuz ",
      title:" + Thinker\n\n",
      description: "We chose ‘The Thinker’ as an inspiration because we must always be a thinking MR company. We took an acorn as an aspiration knowing that one day we will grow into an oak tree.",
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
