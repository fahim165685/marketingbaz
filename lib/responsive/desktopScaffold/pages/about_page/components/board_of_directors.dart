
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';

class BoardOfDirectors extends StatelessWidget {
  const BoardOfDirectors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    ///About Founder & CEO
    String content = "Md. Shah Alam, is a Bangladeshi Business Executive. He is the Chief Executive Officer of Marketingbaz. He has more than 12 years of real life working experience in different International and Local Corporate organization. Born in 1993 at Mitali Para under sadar upzilla in Thakugoan district. He got the spirit of communicating power from the Medical Pharmacy Shop in his boyhood. Actually, his childhood had started as an assistant of a chemist in a Medical pharmacy at Jathivanga Bazar, Thakurgoan.\n\n"
        "Throughout his academic life he kept himself involved with different progressive, creative and extracurricular activities. From 2011 to 2018, He has gained versatile professional experience in Sales & Marketing, Event & Activation, Hospitality Management, Brand communication etc. in different organizations along with his study. He has completed himself in multidimensional projects works which are,\n\n"
        "1. BRAC (LCPES) Little Children Parents Education Survey at Pirgonj in Rangpur, Bangladesh.\n\n"
        "2. IFIC (Mobile Banking) Account opening, Activated and Branding at Bogra Sadar, Bangladesh.\n\n"
        "3. Wisdom International School (Education Household Campaign) at Bogra Sadar, Bangladesh.\n\n"
        "4. Shoptarshi Coaching Center (College Campaign) all colleges in Bogra Sadar, Bangladesh.\n\n"
        "5. Aloha Bangladesh (Data survey & Analysis) at Bogra Sadar, Bangladesh./n/n"
        "6. Rupayan Biddha Niketon (School Management Campaign), at Bogra Sadar, Bangladesh.\n\n"
        "7. Software Marketing (Softonic IT), at Bogra Sadar, Bangladesh.\n\n"
        "8. TVS Auto Bangladesh (Launching Program Metro Plus Motor Bike) at Hotel Siesta in Bogra, Bangladesh. \n\n"
        "9. Daily Provater Alo (News Paper) Ad. Collection & Branding, Bogra.\n\n"
        "10. Agro Marketing Project.\n\n"
        "From boyhood to graduation he had worked several organizations as a part time job holder.\n\n"
        "1. As an Assistant Chemist at Maa Medical Hall, Jathivanga Bazar, Thakurgoan.\n\n"
        "2. As a Junior Marketing Executive at Meds It Development Ltd, Bogra.\n\n"
        "3. As a Business Development Officer at Bogra Agricultural Production and Marketing Company, Bogra.\n\n"
        "4. As a Supervisor at Kohinoor Chemical Company (Bd) Ltd (Dhaka, Bogra, Gaibandha, Rangpur, Khulna, Barisal)\n\n"
        "5. As a Teacher at Admit Coaching Center, Jaleswaritola, Bogra.\n\n"
        "6. As a Marketing Executive at Midas Restaurant, Jaleswaritola, Bogra.\n\n"
        "7. As an Executive (Sales & Marketing) at Hotel Naz Garden, Bogra.\n\n"
        "8. As a Manager (Sales & Operation) at Bogra Convention Center, Bogra.\n\n"
        "In 2015, He established an Event Management Company at Bogra which is Yes Event Management.\n\n"
        "He completed his SSC from Jathivanga S.C high School in 2009 and HSC from Armed Police Battalion Public School and College, Bogra in 2011 with outstanding results in science background. He graduated from the department of Marketing, Govt. Azizul Haque College, Bogra  under National University of Bangladesh. \n\n"
        "After completing his post-graduation degree in Marketing; In 2018, he started his career with Akij Group as an Executive in the department of Sales and Marketing. Mr. Alam also worked at Uttara Motors Ltd as a Senior Executive (Sales& Marketing). Presently, he is working with Suzuki Bangladesh as a Territory Manager.\n\n"
        "He has an extensive expertise on; Marketing, Entrepreneurship Development, Business Development, Marketing Management, Sales Management,  Brand Management, Training Management, Career Management, Event Management, Hospitality Management.\n\n"
        "He has also conducted and facilitated several Trainings, Workshops, Seminars and Trade Fairs while working at Yes Event Management.\n\n"
        "Mr. Shah Alam has attended and completed successfully several Trainings, Workshop and Seminars in offline and online such as (The Fundamental of Digital Marketing from Google Garage, The Fundamental of Research Methodology from BIGM, Brand Management Excellence from Bdjobs, Apparel Merchandising from the SEIP project of Bangladesh Bank)\n\n"
        "During his work tenure he has travelled many districts and gathered versatile practical knowledge on individual and Business Culture of diverse groups of people and organization. He has worked with many successful business entrepreneurs and leaders in Bangladesh.\n\n"
        "He has been involved in Business consultancy with different startup organizations. Such as; Deshi Jhajh, Mastermind Public School, Wisdom International, CANDO Styles, CANDO Agro. He is also a Coordinator (Research and Development- R&D) of Bangladesh Automobile Professional Association (44K Member)\n\n";

    return SizedBox(
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: SelectableText("Profiles of Founder & CEO",style: TextStyle(fontSize: 30,color: kTextColor),)),
          Center(
            child: Container(
              height: 3,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient:const LinearGradient(
                  colors: [
                    kTextLightColor,
                    kPrimaryColor
                  ]
                )

              ),
            ),
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 250,
                child: Image.asset("assets/images/IMG_1.png", ),
              ),
            ),
          ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Align(
               alignment: Alignment.topRight,
                 child: Text("Md. Shah Alam",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700 ),)),
            ),
          const SizedBox(height: 10,),
           const Padding(
             padding: EdgeInsets.only(right: 20),
             child: Align(
              alignment: Alignment.topRight,
                child: Text("Founder & CEO of Marketingbaz.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.grey),)),
           ),
          const Divider(
            color: Colors.grey,
            indent: 900,
          ),
          const SizedBox(height: 20,),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: SelectableText(content,style: const TextStyle(fontSize: 18,)),
          ),
          Center(
            child: Image.asset("assets/images/End_line.png",width:Get.width*0.5),
          )
        ],
      ),
    );
  }
}