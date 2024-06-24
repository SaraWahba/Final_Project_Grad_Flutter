import 'package:final_project_grad_flutter/views/sign_up.dart';
import 'package:final_project_grad_flutter/widgets/auth_text_widget.dart';
import 'package:final_project_grad_flutter/widgets/coustom_image.dart';
import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:final_project_grad_flutter/widgets/custom_icon.dart';
import 'package:final_project_grad_flutter/widgets/form_login.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static String id = "LoginView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 24,left: 24 , bottom: 24),
          child: SafeArea(
            child: Column(
              children: [
                CustomImage(image: "assets/images/login.png"),
                AuthTextWidget(text: 'Log in to continue your learning journey'),
                SizedBox(
                  height: 16,
                ),
                FormLogin(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(child: CustomDivider(heigth: 2,endIndent: 10,indent: 7 ,thickness: 2)),
                    Text('Other Log in Options'),
                    Expanded(child: CustomDivider(heigth: 2,endIndent: 7,indent: 10,thickness: 2)),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIConImage(iconImage:'assets/images/google.png'),
                    CustomIConImage(iconImage:'assets/images/facebook.png'),
                    CustomIConImage(iconImage:'assets/images/apple.png'),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, SignUpView.id);
                    }, child: Text('Sign up',
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