import 'package:final_project_grad_flutter/widgets/auth_text_form_field.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  bool obscureText = true ;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        AuthTextFormField(hintText: 'Full Name'),
        SizedBox(
          height: 16,
        ),
        AuthTextFormField(hintText: 'Email'),
        SizedBox(
          height: 16,
        ),
        AuthTextFormField(
          hintText: 'Password',
          suffixIcon: IconButton(
            onPressed: () {
              obscureText =! obscureText ;
              setState(() {

              });
            },
            icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off ),
          ),
          obscureText: obscureText,
        ),
        SizedBox(height: 16),
        AuthTextFormField(
          hintText: 'Confirm Password',
          suffixIcon: IconButton(
            onPressed: () {
              obscureText =! obscureText ;
              setState(() {

              });
            },
            icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off ),
          ),
          obscureText: obscureText,
        ),
        SizedBox(
          height: 16,
        ),
        CheckboxListTile(
            value: true,
            onChanged: (value){} ,
            title: Text('Send me special offers, personalized recommendations, and learning tips'),
          controlAffinity: ListTileControlAffinity.leading,
        ),
        SizedBox(
          height: 16,
        ),
        CustomButton(text: 'Sign Up'),
      ],
    ),
    );
  }
}
