
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gallery extends StatelessWidget {
  const Gallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List images=[
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
      "assets/images/gallery.png",
    ];

    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
           Text("GALLERY",style: TextStyle(fontSize: Get.width*0.07,fontWeight: FontWeight.w500),),
          Text("Every Events Will Be Memorable",style: TextStyle(fontWeight: FontWeight.w400,fontSize: Get.width*0.03,color: Colors.black.withOpacity(0.4)),),
          const SizedBox(height: 15,),
          ///Divider
          Container(
            height: 5,
            width: Get.width*0.2,
            decoration: BoxDecoration(
              color: Colors.red,
              gradient:  const LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.red,
                    Colors.white,
                  ]),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          const SizedBox(height: 20,),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
            ),
            itemBuilder:(context, index) => imageCard(image: images[index]),)
        ],
      ),
    );
  }
  Container imageCard({required String image}) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.withOpacity(0.1),
        image: DecorationImage(
            image: AssetImage(image),
            fit:BoxFit.cover
        ),
      ),
    );
  }
}