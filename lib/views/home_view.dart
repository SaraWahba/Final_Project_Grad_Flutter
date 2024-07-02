import 'package:final_project_grad_flutter/views/home_view_body.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});
static String id="HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomDrawerScreen(),
          HomeViewBody(),
        ],
      )
    );
  }
}
