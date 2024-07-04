import 'package:final_project_grad_flutter/views/our_courses_view_body.dart';

import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';

import 'package:flutter/material.dart';


class OurCoursesView extends StatelessWidget {
  const OurCoursesView({super.key});
  static String id = "OurCoursesView";
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Stack(
        children: [
        CustomDrawerScreen(),
          OurCoursesViewBody(),
    ],
        )
    );
  }
}
