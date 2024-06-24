import 'package:final_project_grad_flutter/views/login_view.dart';
import 'package:final_project_grad_flutter/widgets/auth_text_widget.dart';
import 'package:final_project_grad_flutter/widgets/coustom_image.dart';
import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:final_project_grad_flutter/widgets/custom_icon.dart';
import 'package:final_project_grad_flutter/widgets/form_login.dart';
import 'package:final_project_grad_flutter/widgets/form_sign_up.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = "SignUpView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 24,left: 24 , bottom: 24),
          child: SafeArea(
            child: Column(
              children: [
                CustomImage(image: "assets/images/sign up.png"),
                AuthTextWidget(text: 'Sign Up and start learning'),
                SizedBox(
                  height: 16,
                ),
                FormSignUp(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an acount?"),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, LoginView.id);
                      }, 
                      child: Text('Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
