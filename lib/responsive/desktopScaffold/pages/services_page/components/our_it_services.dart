import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurITServices extends StatelessWidget {
  const OurITServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List item=[
      "Website Design & Development",
      "Mobile App Development",
      "Software Development",
      "E-commerce Consultancy",
    ];
    return Container(
      width: Get.width,
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration:  const BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color(0xFFFF416C),
            Color(0xFFFF4B2B),
          ]),
          image: DecorationImage(image: AssetImage("assets/images/IT-Service.png"),alignment: Alignment.centerRight,opacity: 0.3)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const AutoSizeText("Our IT Service:",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w700,color: Colors.black),),
          Divider(color: Colors.grey.withOpacity(0.7),thickness: 2,endIndent: Get.width*0.75,),
          const SizedBox(height: 20,),
          ...List.generate(item.length, (index) => textCard(text: item[index])),
          //textCard()
        ],
      ),
    );
  }

  Row textCard({required String text}) {
    return Row(children: [
         const Icon(Icons.done_all,size: 25,color: Colors.white),
          const SizedBox(width: 5,),
          AutoSizeText(text,style:const TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w300)),
        ],);
  }
}