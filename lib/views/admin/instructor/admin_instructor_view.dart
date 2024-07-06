import 'package:final_project_grad_flutter/views/admin/instructor/add_instructor.dart';
import 'package:flutter/material.dart';

class AdminInstructorView extends StatefulWidget {
  const AdminInstructorView({super.key});

  @override
  State<AdminInstructorView> createState() => _AdminInstructorViewState();
}

class _AdminInstructorViewState extends State<AdminInstructorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 5,
        title: Text("Admin Instructor", style: TextStyle(
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddInstructor(),));
        },

      ),
      body: Container(),
    );
  }
}
