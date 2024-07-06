import 'package:final_project_grad_flutter/views/admin/blog/add_blog.dart';
import 'package:flutter/material.dart';
class AdminBlogView extends StatefulWidget {
  const AdminBlogView({super.key});

  @override
  State<AdminBlogView> createState() => _AdminBlogViewState();
}

class _AdminBlogViewState extends State<AdminBlogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 5,
        title: Text("Admin Blog", style: TextStyle(
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddBlog(),));
        },

      ),
      body: Container(),
    );
  }
}
