import 'package:final_project_grad_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
class AddCourses extends StatefulWidget {
  const AddCourses({super.key});

  @override
  State<AddCourses> createState() => _AddCoursesState();
}

class _AddCoursesState extends State<AddCourses> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerCate = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 5,
        title: Text(
          "Add Courses",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'BonaNovaSC'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.save,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          print("==========================================");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomTextFormField(
                hintText: "Name",
                controller: controllerName,
              ),
            ),
            CustomTextFormField(
              hintText: "category",
              controller: controllerCate,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomTextFormField(
                hintText: "price",
                controller: controllerPrice,
              ),
            ),
            CustomTextFormField(
              hintText: "description",
              controller: controllerDescription,
            ),
          ],
        ),
      ),
    );
  }
}
