
import 'package:final_project_grad_flutter/views/about_us_view.dart';
import 'package:final_project_grad_flutter/views/blog_view.dart';
import 'package:final_project_grad_flutter/views/contact_us_view.dart';
import 'package:final_project_grad_flutter/views/home_view.dart';
import 'package:final_project_grad_flutter/views/login_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view_details.dart';
import 'package:final_project_grad_flutter/views/sign_up.dart';
import 'package:final_project_grad_flutter/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyA9-Q3uF6bNrWPkAIlDOqR7yVT7Ix24yS4',
        appId: '1:368143884430:android:d793f59499e1f15b76a9df',
        messagingSenderId: 'messagingSenderId',
        projectId: 'thinktank-182b3',
        storageBucket: 'storageBucket',)
  );
  runApp(const ThinkTank());
}

class ThinkTank extends StatelessWidget {
  const ThinkTank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
      home: const SplashView(),
    routes: {
      SplashView.id: (context) => const SplashView(),
      HomeView.id: (context) => const HomeView(),
      LoginView.id: (context) => const LoginView(),
      SignUpView.id: (context) => const SignUpView(),
      OurCoursesView.id : (context) => const OurCoursesView(),
      OurCoursesViewDetails.id : (context) => const OurCoursesViewDetails(),
      BlogView.id : (context) => const BlogView(),
      ContactUSView.id : (context) => const ContactUSView(),
      AboutUSView.id : (context) => const AboutUSView(),
    }
    );
  }
}


