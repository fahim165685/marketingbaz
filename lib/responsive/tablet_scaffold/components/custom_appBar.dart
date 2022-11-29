import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 60,
          child:InkWell(
            onTap: (){

            },
            overlayColor: MaterialStatePropertyAll(Colors.red.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(10),
            child:Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        // const Color(0xFF404040).withOpacity(0.2),
                        // Colors.black,
                        // const Color(0xFF404040)
                        Colors.black.withOpacity(0.2),
                        //Colors.grey.shade800,
                        Colors.grey.withOpacity(0.3),

                      ],

                    )
                ),
                child: Image.asset("assets/icons/Marketing_baz_Logo.png",)),
          ),
        ),
      ),
      toolbarHeight: 60,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF080808), Color(0xFF1e1e1e)]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
            bottomRight:Radius.circular(5),
        )
        ),
      ),
    );
  }
  @override
  Size get preferredSize =>  const Size(
      double.maxFinite, 65);
}
