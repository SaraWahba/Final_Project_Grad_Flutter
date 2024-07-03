import 'package:final_project_grad_flutter/views/blog_view_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({super.key});
  static String id = "BlogView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CustomDrawerScreen(),
        BlogViewBody()
      ]),
    );
  }
}
