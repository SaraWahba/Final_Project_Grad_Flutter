import 'package:final_project_grad_flutter/views/about_us_view.dart';
import 'package:final_project_grad_flutter/views/blog_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:final_project_grad_flutter/widgets/custom_blog_slider.dart';
import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:final_project_grad_flutter/widgets/custom_text_button.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/custom_slider_our_course.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../core/app_styles.dart';
import '../widgets/our_courses/our_courses_container.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  User user = FirebaseAuth.instance.currentUser!;
  List<String> images = [
    "assets/images/image1.jpeg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
  ];
  List<Widget> listItemsSliderCourses = const [
    OurCoursesContainer(
      image: 'assets/images/image1.jpeg',
      text: 'Development',
      numberLessons: '6',
      numberStudent: '2',
      textDescription: 'How to Market Yourself as Coach or Consultant Market',
      namePerson: 'Jhon Sina',
      rate: 0.0,
      numberStart: '',
      price: '\$44.00',
    ),
    OurCoursesContainer(
      image: 'assets/images/image2.jpeg',
      text: 'Accounting',
      numberLessons: '3',
      numberStudent: '1',
      textDescription: 'Complete Guitar Lessons System Beginner to Advanced',
      namePerson: 'Jhon Sina',
      rate: 5.0,
      numberStart: '5.00',
      price: '\$55.00',
    ),
    OurCoursesContainer(
      image: 'assets/images/image2.jpeg',
      text: 'Business',
      numberLessons: '4',
      numberStudent: '1',
      textDescription: 'User Experience The Ultimate Guide to Usability and UX',
      namePerson: 'Jhon Sina',
      rate: 4.5,
      numberStart: '4.50',
      price: '\$39.00',
    ),
  ];
  @override
  void initState() {
    super.initState();
  }
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: isDrawerOpen ? BorderRadius.circular(15) : BorderRadius.circular(0),
      ),

      child: Container(
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: isDrawerOpen ? BorderRadius.circular(15) : BorderRadius.circular(0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? GestureDetector(
                            child: Icon(Icons.arrow_back_ios,
                             color: Colors.deepPurple,
                             size: 30,),
                            onTap: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : GestureDetector(
                            child: Icon(Icons.menu,
                                color: Colors.deepPurple,
                                size: 30,),
                            onTap: () {
                              setState(() {
                                xOffset = 290;
                                yOffset = 80;
                                isDrawerOpen = true;
                              });
                            },
                          ),
                    Text(
                      "Think Tank",
                      style: TextStyle(
                        fontFamily: 'BonaNovaSC',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Container()
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Education is the transmission of knowledge, skills, and character traits and manifests in various forms. Formal education occurs within a structured institutional framework, such as public schools.",
                      style: AppStyles.textStyle16,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomDivider(
                    heigth: 10,
                    endIndent: 20,
                    indent: 20,
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Our Courses',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.deepPurple)),
                        SliderOurCourse(
                            listItems: listItemsSliderCourses,
                            height: MediaQuery.of(context).size.height * .60),
                        CustomTextButton(
                            text: 'Show all',
                            onPressed: () {
                              Navigator.pushNamed(context, OurCoursesView.id);
                            }),
                      ],
                    ),
                  ),
                  CustomDivider(
                    heigth: 10,
                    endIndent: 20,
                    indent: 20,
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Blog',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.deepPurple)),
                        BlogSlider(
                            height: MediaQuery.of(context).size.height * .5,
                            images: images,
                            maxLines: 3),
                        CustomTextButton(
                            text: 'Show all',
                            onPressed: () {
                              Navigator.pushNamed(context, BlogView.id);
                            }),
                      ],
                    ),
                  ),
                  CustomDivider(
                    heigth: 10,
                    endIndent: 20,
                    indent: 20,
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('About Us',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.deepPurple)),
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
                        CustomTextButton(
                            text: 'Show details',
                            onPressed: () {
                              Navigator.pushNamed(context, AboutUSView.id);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
