
import 'package:final_project_grad_flutter/views/contact_us_view.dart';
import 'package:final_project_grad_flutter/views/login_view.dart';
import 'package:final_project_grad_flutter/views/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ThinkTank());
}

class ThinkTank extends StatelessWidget {
  const ThinkTank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginView.id,
      home: const LoginView(),
    routes: {
      LoginView.id: (context) => const LoginView(),
      SignUpView.id: (context) => const SignUpView(),
      ContactUSView.id : (context) => const ContactUSView(),
    }
    );
  }
}



