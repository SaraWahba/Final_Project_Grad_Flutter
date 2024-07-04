import 'package:final_project_grad_flutter/views/topic_post_view_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';



class TopicsPostView extends StatelessWidget {
  const TopicsPostView({super.key});
  static String id="TopicsPostView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            CustomDrawerScreen(),
            TopicsPostViewBody()
          ],
        )
    );
  }
}