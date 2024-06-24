import 'package:final_project_grad_flutter/widgets/auth_text_form_field.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool obscureText = true ;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
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
        SizedBox(
          height: 16,
        ),
        CustomButton(text: 'Login'),
      ],
    ),
    );
  }
}
