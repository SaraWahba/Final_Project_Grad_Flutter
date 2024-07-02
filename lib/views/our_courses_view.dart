import 'package:final_project_grad_flutter/views/our_courses_view_body.dart';

import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';

import 'package:flutter/material.dart';


class OurCoursesView extends StatelessWidget {
  const OurCoursesView({super.key});
  static String id = "OurCoursesView";

  // List<CourseModel> searchCourse = [];
  @override
  Widget build(BuildContext context) {
    // if (searchCourse.isEmpty) {
    //   setState(() {
    //     myCourse = Course;
    //   });
    // } else {
    //   setState(() {
    //     myCourse = searchCourse;
    //   });
    // }
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Courses"),
        //   actions: [
        //     IconButton(
        //         onPressed: () {
        //           showDialog(
        //             context: context,
        //             builder: (context) {
        //               return AlertDialog(
        //                 content: AlertDialogSearchWidget(
        //                   selectCategory: (value) {
        //                     print("======================================");
        //                     print(value);
        //                     searchCourse.clear();
        //                     for (var i in Course) {
        //                       print(value.contains(i.title));
        //                       if (value.contains(i.title)) {
        //                         searchCourse.add(i);
        //                         setState(() {});
        //                         print(
        //                             "=========================${searchCourse.length}======================");
        //                       }
        //                     }
        //                   },
        //                 ),
        //               );
        //             },
        //           );
        //         },
        //         icon: Icon(Icons.search)),
        //     IconButton(
        //         onPressed: () {
        //           searchCourse.clear();
        //           setState(() {});
        //         },
        //         icon: Icon(Icons.refresh))
        //   ],
        // ),
        body: Stack(
        children: [
        CustomDrawerScreen(),
          OurCoursesViewBody(),
    ],
        )
    );
  }
}
