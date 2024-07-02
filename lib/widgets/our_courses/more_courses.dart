import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_container.dart';
import 'package:flutter/material.dart';
class MoreCourses extends StatelessWidget {
  const MoreCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 24),
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: AlignmentDirectional.center,
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
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'More Courses by ThinkTank-admin',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 16,),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, OurCoursesView.id);
            },
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'View All Courses ->',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple),
              ),
            ),
          ),
          SizedBox(height: 16,),
          OurCoursesContainer(
            image: 'assets/images/business.jpg',
            text: 'Business',
            numberLessons: '4',
            numberStudent: '1',
            textDescription: 'How to Run truly Productive in Meetings – and add value',
            namePerson: 'Jhon Sina',
            rate: 5.0,
            numberStart: '5.00',
            price: 'Free',
          ),
          SizedBox(height: 16,),
          OurCoursesContainer(
            image: 'assets/images/dance.jpg',
            text: 'Dance',
            numberLessons: '2',
            numberStudent: '1',
            textDescription: 'Pole Dancing Video Course with Noelle Wood',
            namePerson: 'Jhon Sina',
            rate: 0.0,
            numberStart: '',
            price: '\$70.00',
          ),
        ],
      ),
    );
  }
}
