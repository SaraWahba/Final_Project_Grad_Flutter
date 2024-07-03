import 'package:final_project_grad_flutter/views/about_us_view_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';



class AboutUSView extends StatelessWidget {
  const AboutUSView({super.key});
  static String id = "AboutUSView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomDrawerScreen(),
          AboutUsViewBody()
        ],
      )
    );
  }
}
