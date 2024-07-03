import 'package:final_project_grad_flutter/views/our_courses_view_details_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class OurCoursesViewDetails extends StatelessWidget {
  const OurCoursesViewDetails({super.key});
  static String id = "OurCoursesViewDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomDrawerScreen(),
          OurCoursesViewDetailsBody()
        ],
      ),
    );
  }
}
