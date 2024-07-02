import 'package:final_project_grad_flutter/views/about_us_view.dart';
import 'package:final_project_grad_flutter/views/blog_view.dart';
import 'package:final_project_grad_flutter/views/contact_us_view.dart';
import 'package:final_project_grad_flutter/views/home_view.dart';
import 'package:final_project_grad_flutter/views/instructor_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:final_project_grad_flutter/widgets/drawer/links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../views/login_view.dart';

class CustomDrawerScreen extends StatelessWidget {
  const CustomDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 35, bottom: 70),
        child: Column(
          children: [
            const Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Image(
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Think Tank',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'BonaNovaSC',
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 70),
            Column(
              children: [
                Links(text: 'Home',
                 onTap: (){
                   Navigator.pushReplacementNamed(context, HomeView.id);
                 }),
                const SizedBox(height: 18),
                Links(text: 'Our Courses',
                    onTap: (){
                      Navigator.pushReplacementNamed(context, OurCoursesView.id);
                    }
                    ),
                const SizedBox(height: 18),
                Links(text: 'Blog',
                    onTap: (){
                      Navigator.pushNamed(context, BlogView.id);
                    }),
                const SizedBox(height: 18),
                Links(text: 'Instructor',
                    onTap: (){
                      Navigator.pushNamed(context, InstructorView.id);
                    }),
                const SizedBox(height: 18),
                Links(text: 'About Us',
                    onTap: (){
                      Navigator.pushNamed(context, AboutUSView.id);
                    }),
                const SizedBox(height: 18),
                Links(text: 'Contact US',
                    onTap: (){
                      Navigator.pushNamed(context, ContactUSView.id);
                    }),
                const SizedBox(height: 80),
                const CustomDivider(heigth: 2, endIndent: 250, indent: 0, thickness: 2),
                Links(text: 'Sign Out',
                    onTap: (){
                      FirebaseAuth.instance.signOut();
                      Navigator.pushReplacementNamed(context, LoginView.id);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}