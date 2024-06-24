import 'package:final_project_grad_flutter/widgets/custom_item.dart';
import 'package:final_project_grad_flutter/widgets/form_contact_us.dart';
import 'package:final_project_grad_flutter/widgets/widget_text_form_field.dart';
import 'package:flutter/material.dart';

class ContactUSView extends StatelessWidget {
  const ContactUSView({super.key});
  static String id = "ContactUSView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: SafeArea(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
           child: Column(
               children: [
                 Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         CustomItem(
                             text: 'Our Website',
                             text1: 'www.eduvibe.com',
                             text2: 'www.wpvive.com',
                             icon: Icons.language,
                             colors: Color(0xFFEDEDF7),
                             color: Color(0xFF6F72AE)),

                         CustomItem(
                             text: 'Call Us On',
                             text1: '+2763(388)2930',
                             text2: '+4875(356)2568',
                             icon: Icons.call,
                             colors: Color(0xFFFBF3EC),
                             color: Color(0xFFDC8347))
                       ],
                     ),
                     SizedBox(height: 16),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         CustomItem(
                             text: 'Email Us',
                             text1: 'eduvibe@mail.com',
                             text2: 'wpvive@mail.com',
                             icon: Icons.email_outlined,
                             colors: Color(0xFFFBF3EC),
                             color: Color(0xFFDC8347)),
                         CustomItem(
                             text: 'Our Location',
                             text1: '486 Normana Avenue',
                             text2: 'Marningtide, 4223',
                             icon: Icons.location_on_outlined,
                             colors: Color(0xFFEDEDF7),
                             color: Color(0xFF6F72AE)
                         )
                       ],
                     )
                   ],
                 ),
                 SizedBox(height: 16),
                 FormContactUs(),
               ],
           ),
         ),
       ),
     ),
    );
  }
}
