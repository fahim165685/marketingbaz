import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mkbuzz/constants.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/about_page/about.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/contact/contact.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/home_page/home.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/services_page/services.dart';
import 'package:mkbuzz/responsive/tablet_scaffold/pages/sister_concern/sister_concern.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                "assets/icons/MB_Logo.png",
                height: 150,
              )),
          Divider(
            thickness: 1,
            color: Colors.grey.withOpacity(0.7),
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              Get.off(() => const Home());
            },
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: const Icon(Icons.info_outline),
            title: const Text("About"),
            onTap: () {
              Get.off(() => const About());
            },
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: Image.asset(
              "assets/icons/services_icon_outline.png",
              height: 30,
              width: 30,
            ),
            title: const Text("Services"),
            onTap: () {
              Get.off(() => const ServicePage());
              },
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: Image.asset(
              "assets/icons/Concern_Icon_outline.png",
              height: 30,
              width: 30,
            ),
            title: const Text("Sister Concern"),
            onTap: () {
              Get.off(() => const SisterConcern());
            },
          ),
          Divider(
            color: kTextColor.withOpacity(0.2),
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact"),
            onTap: () {
              Get.off(()=>const Contact());
            },
          ),
          Divider(
            color: Colors.black.withOpacity(0.2),
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: const Icon(
              Icons.policy_outlined,
            ),
            title: const Text("Policies"),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    title: const Text('Marketingbuz Policies'),
                    content: const Text('Policies'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Back'),
                        onPressed: () {
                          Navigator.of(dialogContext)
                              .pop(); // Dismiss alert dialog
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            textColor: kTextColor,
            iconColor: Colors.black,
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Exit"),
            onTap: () {},
          ),
          const SizedBox(
            height: 100,
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SelectableText(
                "© 2008- 2022 | Marketingbuz | ALL RIGHTS RESERVED",
                style: TextStyle(
                    fontSize: 12, color: Colors.grey.withOpacity(0.8)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
