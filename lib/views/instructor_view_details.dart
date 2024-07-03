import 'package:final_project_grad_flutter/views/instructor_view_details_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';


class InstructorViewDetails extends StatelessWidget {
  const InstructorViewDetails({super.key, required this.image, required this.name,});
  static String id = "InstructorViewDetails";
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomDrawerScreen(),
            InstructorViewDetailsBody(image: image, name: name)
          ],
        )
      ),
    );
  }
}
