import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/custom_slider_our_course.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/instructor_our_course.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_details_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/text_and_icon_weidget.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/text_more.dart';
import 'package:flutter/material.dart';
import '../widgets/our_courses/our_courses_container.dart';

class OurCoursesViewDetails extends StatefulWidget {
  const OurCoursesViewDetails({super.key});
  static String id = "OurCoursesViewDetails";

  @override
  State<OurCoursesViewDetails> createState() => _OurCoursesViewDetailsState();
}

class _OurCoursesViewDetailsState extends State<OurCoursesViewDetails> {
  List<Widget> listItemsSlider = const [
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
    OurCoursesContainer(
      image: 'assets/images/image2.jpeg',
      text: 'Business',
      numberLessons: '4',
      numberStudent: '1',
      textDescription: 'User Experience The Ultimate Guide to Usability and UX',
      namePerson: 'Jhon Sina',
      rate: 4.5,
      numberStart: '4.50',
      price: '\$39.00',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              OurCoursesDetailsContainer(),
              SizedBox(height: 18),
              TextMore(),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: Offset(0, 0))
                    ]),
                child: Column(children: [
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'What Will You Learn?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextAndIcon(text: 'Learn New Things'),
                  SizedBox(height: 16),
                  TextAndIcon(text: 'Self Development'),
                  SizedBox(height: 16),
                  TextAndIcon(text: 'Skills Update'),
                  SizedBox(height: 16),
                  TextAndIcon(text: 'Prepared Yourself'),
                ]),
              ),
              SizedBox(height: 20),
              InstructorOurCourses(),
              SizedBox(height: 24),
              SliderOurCourse(
                  listItems: listItemsSlider,
                  height: MediaQuery.of(context).size.height * .60),
              SizedBox(height: 24),
              FooterContainer(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
