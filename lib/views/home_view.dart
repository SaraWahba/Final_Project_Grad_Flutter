import 'package:final_project_grad_flutter/views/about_us_view.dart';
import 'package:final_project_grad_flutter/views/login_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../core/app_styles.dart';
import '../models/course_model.dart';
import '../widgets/custom_blog_slider.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/customdrawer.dart';
import '../widgets/item_grid_view.dart';
import 'blog_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
static String id="HomeView";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  User user = FirebaseAuth.instance.currentUser!;
  List<String> images = [
    "assets/images/image1.jpeg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
  ];
  List<CourseModel> listCourses = [
    CourseModel(
      image: 'image1.jpeg',
      title: 'Art Courses',
      subTitle:
      'Art Courses Art Courses Art Courses Art Courses Art Courses Art Courses Courses Courses Courses Courses Courses Courses Courses Courses',
    ),
    CourseModel(
      image: 'image3.jpeg',
      title: 'Art Courses',
      subTitle:
      'Art CoursesArt CoursesArt Courses Art CoursesArt Courses Art CoursesCoursesCourses CoursesCoursesCourses CoursesCourses Coursesfsf',
    )
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      drawer:CustomDrawer() ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Education is the transmission of knowledge, skills, and character traits and manifests in various forms. Formal education occurs within a structured institutional framework, such as public schools.",
                style: AppStyles.textStyle16,
                textAlign: TextAlign.center,
              ),
            ),

            CustomDivider(heigth: 10, endIndent: 20, indent: 20, thickness: 2,),
            Container(
              child: Column(
                children: [
                  Text('Our Courses'),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 8),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listCourses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemGridView(
                        image: listCourses[index].image,
                        title: listCourses[index].title,
                        subTitle: listCourses[index].subTitle,
                      );
                    },
                  ),
                  CustomTextButton(text: 'Show all',onPressed: (){Navigator.pushNamed(context,OurCoursesView.id);}),
                ],
              ),
            ),
            CustomDivider(heigth: 10, endIndent: 20, indent: 20, thickness: 2,),
            Container(
              child: Column(
                children: [
                  Text('Blog'),
                  BlogSlider(
                      height: MediaQuery.of(context).size.height * .5,
                      images: images,
                      maxLines: 3),
                  CustomTextButton(
                      text: 'Show all',onPressed: (){Navigator.pushNamed(context,BlogView.id);}),
                ],
              ),
            ),
            CustomDivider(heigth: 10, endIndent: 20, indent: 20, thickness: 2,),
            Container(
              child: Column(
                children: [
                  Text('About Us'),
                  ListTile(
                    title: Text('2 Trophies Received'),
                    leading: Icon(Icons.emoji_events),
                  ),
                  ListTile(
                    title: Text('We Keep Our Students Happy'),
                    leading: Icon(Icons.emoji_emotions),
                  ),
                  ListTile(
                    title: Text('2 Locations in Eg'),
                    leading: Icon(Icons.location_on),
                  ),
                  ListTile(
                    title: Text('Our Team'),
                    leading: Icon(Icons.group),
                  ),
                  CustomTextButton(text: 'Show details',onPressed: (){Navigator.pushNamed(context,AboutUSView.id);}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
