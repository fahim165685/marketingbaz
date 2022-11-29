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
          const Text("Our Services",style: TextStyle(fontSize: 50,color: kPrimaryColor,fontWeight: FontWeight.w600),),
          Container(
            height: 5,
            width:150,
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
      width: 305,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: 300,
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
          Text(text,maxLines: 2,style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),

        ],
      ),
    );
  }
}