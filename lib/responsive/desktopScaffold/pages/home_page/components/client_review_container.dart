import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:mkbuzz/model/client_review_list.dart';
import 'package:readmore/readmore.dart';


class ClientReviewContainer extends StatelessWidget {
  const ClientReviewContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late ScrollController  controller=ScrollController();
    return SizedBox(
      width: Get.width,
      height: 400,
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
               const SizedBox(height: 20,),
                const Text(
                  "Our Client Feedback",
                  style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width:Get.width*0.3,
                  child: AutoSizeText(
                      "Our esteemed and valued clients share their values with us. Let's see the comments of our satisfied clients.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor.withOpacity(0.5))),
                )
              ],
            ),

          ),
          Positioned(
              bottom: 50,
              right: 0,
              child: Image.asset("assets/images/Line_shape.png",height: 100,)),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(clientReviewList.length, (index) => itemCard(clientReview: clientReviewList[index]))
                  ,
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 90,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildButton(onTap: () {
                    controller.animateTo(controller.position.viewportDimension, duration: const Duration(seconds: 15), curve: Curves.easeInOutSine);
                  }, icon: Icons.arrow_back_ios_rounded),
                  buildButton(onTap: () {
                    controller.animateTo(controller.position.maxScrollExtent, duration: const Duration(seconds: 15), curve: Curves.easeInOutSine);
                  }, icon: Icons.arrow_forward_ios_rounded),
                ],
              ))
        ],
      ),
      //shape
    );
  }

  Container itemCard({required ClientReview clientReview}) {
    return Container(
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                margin:const EdgeInsets.symmetric(horizontal: 20),
                //height: 350,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 2,color:kPrimaryLightColor.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height:100,
                      child: SingleChildScrollView(
                        child: ReadMoreText(
                          clientReview.description,
                          trimLines: 5,
                          trimMode: TrimMode.Line,
                          colorClickableText: Colors.pink,
                          trimCollapsedText: ' Show more',
                          trimExpandedText: ' Show less',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: kTextColor.withOpacity(0.8)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(clientReview.image)),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: const Offset(8,2),
                              blurRadius: 10,
                            )
                          ]
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              right: -4,
                              bottom: -4,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(clientReview.logo),

                              )
                            ),
                          ],
                        ),
                      ),
                     const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //clientName
                          Text(clientReview.name.toUpperCase(),style:const TextStyle(color: kPrimaryLightColor,fontWeight: FontWeight.w700),),
                          //companyName
                          Text(clientReview.companyName,style: TextStyle(color: kTextColor.withOpacity(0.5),fontWeight: FontWeight.w300,fontSize: 12),)
                        ],
                      )
                    ],),
                  ],
                ),
              );
  }
  ElevatedButton buildButton(
      {required VoidCallback onTap, required IconData icon}) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
            overlayColor:  MaterialStatePropertyAll(Colors.redAccent.withOpacity(0.3)),
            backgroundColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.2)),
            shape: const MaterialStatePropertyAll(CircleBorder())),
        child: Icon(icon,color: Colors.red,));
  }
}