import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:flutter/material.dart';

import '../custom_button.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(0, 5))
          ],
          color:  Colors.deepPurple),
      child: Column(
        children: [
          const Text(
            'Skills Certificate From the Thin Tank',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 18),
          CustomButton(
            text: 'View All Course  ->',
            color: Colors.white,
            width: 220,
            onTap: () {
              Navigator.pushNamed(context, OurCoursesView.id);
            },
            textStyle: const TextStyle(color: Colors.deepPurple, fontSize: 19),
          ),
          const SizedBox(height: 24),
          const Image(image: AssetImage('assets/images/women-1.png'))
        ],
      ),
    );
  }
}
