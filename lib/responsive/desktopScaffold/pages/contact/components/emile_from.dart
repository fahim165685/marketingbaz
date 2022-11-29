import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EmileFrom extends StatefulWidget {
  const EmileFrom({Key? key}) : super(key: key);

  @override
  State<EmileFrom> createState() => _EmileFromState();
}

class _EmileFromState extends State<EmileFrom> {
  final _formKey = GlobalKey<FormState>();
  ///controller
  final nameController =TextEditingController();
  final emileController =TextEditingController();
  final subjectController =TextEditingController();
  final phoneController =TextEditingController();
  final messageController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Expanded(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Name & Emile
            Row(
              children: [
                Expanded(
                  child: buildTextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    icon: Icons.person_outline,
                    labelText: "Enter your Full Name",
                    validator: (name) {
                      if (name!.isEmpty) {
                        return 'Insert Your Name*';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: buildTextFormField(
                    controller: emileController,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.mail_outline_rounded,
                    labelText: "Enter Emile",
                    validator: (name) {
                      if (name!.isEmpty) {
                        return 'Insert Your Emile*';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),

            ///Subject
            Row(
              children: [
                Expanded(
                  child: buildTextFormField(
                    controller: subjectController,
                      validator: (subject) {
                        if (subject!.isEmpty) {
                          return 'Enter your Subject*';
                        } else {
                          return null;
                        }
                      },
                      labelText: "Enter your Subject",
                      icon: Icons.subject,
                      keyboardType: TextInputType.text),
                ),
                const SizedBox(
                  width: 20,
                ),

                ///Phone
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: buildTextFormField(
                      controller: phoneController,
                        validator: (phone) {
                          if (phone!.isEmpty || phone.length < 11) {
                            return 'Insert valid Number';
                          } else {
                            return null;
                          }
                        },
                        maxLength: 11,
                        labelText: "Enter your Mobile Number",
                        icon: Icons.phone_outlined,
                        keyboardType: TextInputType.phone),
                  ),
                ),

              ],
            ),

            buildTextFormField(
              controller: messageController,
                validator: (message) {
                  if (message!.isEmpty) {
                    return 'Write message*';
                  } else {
                    return null;
                  }
                },
                maxLines: 6,
                labelText: "Write your message..",
                icon: Icons.edit,
                keyboardType: TextInputType.text),

            const SizedBox(height: 100,),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Color(0XFF3e2093)),
                  fixedSize: MaterialStatePropertyAll(Size(Get.width*0.1,50))
                ),
                onPressed:  () {
                  final isValidFrom = _formKey.currentState!.validate();
                  if (isValidFrom) {
                    sendEmil(
                        name: nameController.text,
                        emile: emileController.text,
                        subject: subjectController.text,
                        phone: phoneController.text,
                        message: messageController.text
                    );
                  }
                },
                child: const Text("Send Male",),
              ),
            )
          ],
        ),
      )),
    );

  }

  TextFormField buildTextFormField(
      {required TextEditingController controller,
        required String? Function(String?) validator,
      required String labelText,
      required IconData icon,
      int? maxLength,
      int? maxLines,
      required TextInputType keyboardType}) {
    return TextFormField(
      controller:controller ,
        maxLength: maxLength,
        maxLines: maxLines,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: labelText,
          suffixIcon: Icon(icon),
        ));


  }

  /// Emile Send
  Future sendEmil({
  required String name,
  required String emile,
  required String subject,
  required String phone,
  required String message,
})async{
    const serviceId ='service_2uqw8ru';
    const templateId ='template_kd98tph';
    const userId ='hKeplvDHktjeEk8v1';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
        final response= await  http.post(
          url,
          headers: {
            'origin':'http://localhost',
            'Content-Type': 'application/json',
          },
          body: json.encode({
            'service_id':serviceId,
            'template_id':templateId,
            'user_id':userId,
            'template_params':{
              'user_name':name,
              'user_emile':emile,
              'user_subject':subject,
              'user_mobile':phone,
              'user_message':message,

            }
          }),
        );
    print(response.body);
  }
}

