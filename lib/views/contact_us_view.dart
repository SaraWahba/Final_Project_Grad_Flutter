import 'package:final_project_grad_flutter/views/contact_us_view_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class ContactUSView extends StatelessWidget {
  const ContactUSView({super.key});
  static String id = "ContactUSView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(children: [
       CustomDrawerScreen(),
       ContactUsViewBody()
     ]
     ),
    );
  }
}
