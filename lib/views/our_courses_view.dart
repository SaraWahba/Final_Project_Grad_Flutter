import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_container.dart';
import 'package:flutter/material.dart';

class OurCoursesView extends StatelessWidget {
  const OurCoursesView({super.key});
  static String id = "OurCoursesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                children: [
                  OurCoursesContainer(
                    image: 'assets/images/image1.jpeg',
                    text: 'Development',
                    numberLessons: '6',
                    numberStudent: '2',
                    textDescription: 'How to Market Yourself as Coach or Consultant Market',
                    namePerson: 'Jhon Sina',
                    rate: 0.0,
                    numberStart: '',
                    price: '\$44.00',
                  ),
                  SizedBox(height: 18),
                  OurCoursesContainer(
                    image: 'assets/images/image2.jpeg',
                    text: 'Accounting',
                    numberLessons: '3',
                    numberStudent: '1',
                    textDescription: 'Complete Guitar Lessons System Beginner to Advanced',
                    namePerson: 'Jhon Sina',
                    rate: 5.0,
                    numberStart: '5.00',
                    price: '\$55.00',
                  ),
                ],
              )
          )
      ),
    );
  }
}
