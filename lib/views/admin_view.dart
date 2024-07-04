import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer/custom_drawer.dart';
import 'admin_view_body.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Stack(
        children: [
          CustomDrawerScreen(),
          AdminViewBody(),
        ],
      ),
    );
  }
}
