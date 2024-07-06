import 'package:final_project_grad_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
class AddBlog extends StatefulWidget {
  const AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerCate = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 5,
        title: Text(
          "Add Blog",
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
