import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class OurServices extends StatelessWidget {
  const OurServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List services =[
      ["Local & Corporate Event and Activation","assets/images/Local-&-Corporate-Event-and-Activation.png"],
      ["Wedding Planning","assets/images/wedding-plan-vector-.png"],
      ["Photography and Videography","assets/images/Photography-and-Videography.png"],
      ["Other......","assets/images/IT-Service.png"],
    ];

    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
           Text("Our Services",style: TextStyle(fontSize: Get.width*0.07,color: kPrimaryColor,fontWeight: FontWeight.w600),),
          Container(
            height: 5,
            width:Get.width*0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                    colors: [
                      kTextColor,
                      kTextLightColor
                    ]
                )
            ),
          ),
          const SizedBox(height: 50,),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              ...List.generate(services.length, (index) => ourServiceCard(
                  text: services[index][0],
                  image: services[index][1]
              ))
            ],
          ),

          const SizedBox(height: 50,),
        ],
      ),
    );
  }

  SizedBox ourServiceCard({required String text,required String image,}) {
    return SizedBox(
      width: Get.width*0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Get.width*0.3,
            width: Get.width*0.3,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white,width: 2),
                boxShadow:[
                  BoxShadow(
                      color: Colors.red.withOpacity(0.1),
                      offset: const Offset(10,5),
                      blurRadius: 5
                  ),
                  BoxShadow(
                      color: Colors.tealAccent.withOpacity(0.1),
                      offset: const Offset(-10,-5),
                      blurRadius: 5
                  ),
                ],
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(height: 10,),
          Text(text,maxLines: 2,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),

        ],
      ),
    );
  }
}