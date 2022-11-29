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
  List item=[
    [Icons.people,"Team Work","We Made Up Of A Procreative, Strategist Dynamic And Enthusiastic Team "],
    [Icons.access_time,"Timing","To invest Time for betterSuccess"],
    [Icons.add_chart,"Tendency","A world Class business solution platform."],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount:item.length ,
          itemBuilder: (context, index, realIndex) {
            //final texts = text[index];
            return Container(
              padding:const EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: BuildText(
                  icon: item[index][0],
                  title: item[index][1],
                  subTitle: item[index][2],
                ),
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
           height: 120,
           // aspectRatio: 3/1,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
        buildIndicator(),
      ],
    );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex:activeIndex,
    count: item.length,
    effect: ExpandingDotsEffect(
        dotWidth: 12,
        dotHeight: 12,
        activeDotColor: kPrimaryLightColor,
        dotColor: kTextLightColor.withOpacity(0.2)),
  );
}

class BuildText extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const BuildText({
    super.key,
    required this.title,
    required this.icon,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon,color: Colors.white,),
            const SizedBox(width: 10,),
            Text(title,style: const TextStyle(fontSize: 20,color: Colors.white),),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(subTitle,style:TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.7))),
        )
      ],
    );
  }
}
