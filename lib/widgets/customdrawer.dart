import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../views/about_us_view.dart';
import '../views/blog_view.dart';
import '../views/contact_us_view.dart';
import '../views/home_view.dart';
import '../views/login_view.dart';
import '../views/our_courses_view.dart';
import 'item_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      backgroundColor: const Color(0xFF0D0908).withOpacity(.90),
      child: ListView(
        children: [
          const DrawerHeader(
              child: Row(
            children: [
              Icon(Icons.ac_unit, color: Colors.white, size: 30),
              SizedBox(
                width: 25,
              ),
              Text(
                'Think \nTank',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
          ItemListTile(
            text: 'Home',
            icon: Icons.home,
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeView.id);
            },
          ),
          ItemListTile(
            text: 'Our Courses',
            icon: Icons.category_sharp,
            onTap: () {
              Navigator.pushNamed(context, OurCoursesView.id);
            },
          ),

          ItemListTile(
            text: 'Blog',
            icon: Icons.home,
            onTap: () {
              Navigator.pushNamed(context, BlogView.id);
            },
          ),
          ItemListTile(
            text: 'About Us',
            icon: Icons.person,
            onTap: () {
              Navigator.pushNamed(context, AboutUSView.id);
            },
          ),
          ItemListTile(
            text: 'Contact US',
            icon: Icons.person,
            onTap: () {
              Navigator.pushNamed(context, ContactUSView.id);
            },
          ),
          const ItemListTile(text: 'Get In Touch', icon: Icons.home),
          ItemListTile(
            text: 'Sign Out',
            icon: Icons.logout,
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, LoginView.id);
            },
          ),
          const ItemListTile(text: 'Language', icon: Icons.language),
        ],
      ),
    );
  }
}
