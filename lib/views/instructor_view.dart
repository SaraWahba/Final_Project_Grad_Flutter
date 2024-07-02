import 'package:final_project_grad_flutter/views/instructor_view_details.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/instructor/instructor_container.dart';
import 'package:flutter/material.dart';

import '../models/instructor_model.dart';

class InstructorView extends StatefulWidget {
  const InstructorView({super.key});
  static String id = "InstructorView";

  @override
  State<InstructorView> createState() => _InstructorViewState();
}

class _InstructorViewState extends State<InstructorView> {

  List<InstructorModel> listInstructor=[
    InstructorModel(image: 'assets/images/instructor3.jpg', nameInstructor: 'Dana White', jobInstructor: 'UI/UX Exparet'),
    InstructorModel(image: 'assets/images/instructor4.jpg', nameInstructor: 'Elizabeth Olsen', jobInstructor: 'Assistant Teacher'),
    InstructorModel(image: 'assets/images/instructor5.jpg', nameInstructor: 'Jons Emon', jobInstructor: 'Assistant Teacher'),
    InstructorModel(image: 'assets/images/instructor2.png', nameInstructor: 'Mahmud Sujons', jobInstructor:'Instructor'),
    InstructorModel(image: 'assets/images/instructor6.jpg', nameInstructor: 'Masud Rana', jobInstructor:'Instructor'),
    InstructorModel(image: 'assets/images/instructor1.jpg', nameInstructor: 'Jhon Sina', jobInstructor:'Assistant Teacher'),
    InstructorModel(image: 'assets/images/instructor7.jpg', nameInstructor: 'Thomas Fred', jobInstructor:'Assistant Teacher'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
              return InstructorContainer(
                image: listInstructor[index].image,
                nameInstructor: listInstructor[index].nameInstructor,
                jobInstructor: listInstructor[index].jobInstructor,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InstructorViewDetails(
                    image: listInstructor[index].image,
                    name:listInstructor[index].nameInstructor ,
                  ),),
                  );
                },
              );
            }, separatorBuilder: (context, index) => SizedBox(height: 18,), itemCount: listInstructor.length),


            SizedBox(height: 24),
            FooterContainer(),
            SizedBox(height: 24),
          ],
        )),
      ),
    );
  }
}
