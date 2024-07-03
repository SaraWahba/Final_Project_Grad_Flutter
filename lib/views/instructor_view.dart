import 'package:final_project_grad_flutter/views/instructor_view_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class InstructorView extends StatefulWidget {
  const InstructorView({super.key});
  static String id = "InstructorView";

  @override
  State<InstructorView> createState() => _InstructorViewState();
}

class _InstructorViewState extends State<InstructorView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomDrawerScreen(),
          InstructorViewBody()
        ],
      )
    );
  }
}
