import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:final_project_grad_flutter/widgets/widget_text_form_field.dart';
import 'package:flutter/material.dart';
class FormContactUs extends StatelessWidget {
  const FormContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
            children: [
              WidgetTextFormField(hintText: 'Named*'),
              SizedBox(
                height: 16,
              ),
              WidgetTextFormField(hintText: 'Email*'),
              SizedBox(
                height: 16,
              ),
              WidgetTextFormField(hintText: 'Phone'),
              SizedBox(
                height: 16,
              ),
              WidgetTextFormField(hintText: 'Subject'),
              SizedBox(
                height: 16,
              ),
              WidgetTextFormField(hintText: 'Your Message',maxLines: 5),
              SizedBox(
                height: 16,
              ),
              CustomButton(text: 'Submit Now ->'),
            ],
        )
    );
  }
}
