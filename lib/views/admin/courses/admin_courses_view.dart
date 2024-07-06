import 'package:final_project_grad_flutter/views/admin/courses/add_courses.dart';
import 'package:flutter/material.dart';
class AdminCoursesView extends StatefulWidget {
  const AdminCoursesView({super.key});

  @override
  State<AdminCoursesView> createState() => _AdminCoursesView();
}

class _AdminCoursesView extends State<AdminCoursesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 5,
        title: Text("Admin Courses", style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'BonaNovaSC'
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          print("M");
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddCourses(),));
        },

      ),
      body: Container(),
    );
  }
}
