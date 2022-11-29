import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:mkbuzz/model/home_page_highlight_feature_list.dart';


class IndustriesWeServe extends StatelessWidget {
  const IndustriesWeServe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late ScrollController  controller=ScrollController();
    return Container(
      width: Get.width,
      height: 300,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/IMG_2.png"),
              alignment: Alignment.centerRight,
              opacity: 0.16
          )),
      child: Stack(
        //clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              children: [
                ///title Text
                const Text(
                  "Industries We Serve",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "We provide more than 15+ services",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                ),
                ///Divider
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 4,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kPrimaryColor),
                ),
              ],
            ),
          ),
          Positioned(
            top: 155,
            child: Container(
              color: Colors.grey.withOpacity(0.1),
              width: Get.width,
              height: 2,
            ),
          ),
          ///ItemCard
          Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                      itemList.length,
                          (index) => itemCard(
                        itemsList: itemList[index],
                      )),
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 190,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildButton(
                      onTap: () {
                        controller.animateTo(controller.position.viewportDimension, duration: Duration(seconds: 20), curve: Curves.easeInOutSine);
                      }, icon: Icons.arrow_back_ios_rounded),
                  buildButton(
                      onTap: () {
                        controller.animateTo(controller.position.maxScrollExtent, duration: Duration(seconds: 20), curve: Curves.easeInOutSine);
                      }, icon: Icons.arrow_forward_ios_rounded),
                ],
              )),
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
            overlayColor:
            MaterialStatePropertyAll(Colors.redAccent.withOpacity(0.3)),
            backgroundColor:
            MaterialStatePropertyAll(Colors.grey.withOpacity(0.2)),
            shape: const MaterialStatePropertyAll(CircleBorder())),
        child: Icon(
          icon,
          color: Colors.red,
        ));
  }
  Container itemCard({required ItemList itemsList}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      height: 200,
      width: 250,
      child: Column(
        children: [
          Card(
            elevation: 10,
            shape: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    itemsList.icon,
                    color: kPrimaryLightColor,
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            itemsList.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            itemsList.subTitle,
            textAlign: TextAlign.center,
            maxLines: 4,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: kSedentaryColor.withOpacity(0.7)),
          ),
        ],
      ),
    );
  }
}

