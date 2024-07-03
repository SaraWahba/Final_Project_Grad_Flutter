import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/course_by.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/custom_slider_our_course.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/expansion_tile_our_courses.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/instructor_our_course.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/more_courses.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_details_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/rating_reviews.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/text_and_icon_weidget.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/text_more.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
class OurCoursesViewDetailsBody extends StatefulWidget {
  const OurCoursesViewDetailsBody({super.key});

  @override
  State<OurCoursesViewDetailsBody> createState() => _OurCoursesViewDetailsBodyState();
}

class _OurCoursesViewDetailsBodyState extends State<OurCoursesViewDetailsBody> {

  List<Widget> listItemsSlider = const [
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
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
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
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: isDrawerOpen
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
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  OurCoursesDetailsContainer(),

                  SizedBox(height: 18),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0,
                                blurRadius: 3,
                                offset: Offset(0, 0))
                          ]),
                      child:  FlickVideoPlayer(
                          flickManager: flickManager
                      )),
                  SizedBox(height: 18),
                  TextMore(),
                  SizedBox(height: 24),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.deepPurple,
                              spreadRadius: 0,
                              blurRadius: 1,
                              offset: Offset(0, 0))
                        ]),
                    child: Column(children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'What Will You Learn?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextAndIcon(text: 'Learn New Things'),
                      SizedBox(height: 16),
                      TextAndIcon(text: 'Self Development'),
                      SizedBox(height: 16),
                      TextAndIcon(text: 'Skills Update'),
                      SizedBox(height: 16),
                      TextAndIcon(text: 'Prepared Yourself'),
                    ]),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Course Content',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ExpansionTileOurCourse(),
                  SizedBox(height: 24),
                  InstructorOurCourses(),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Student Ratings & Reviews',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  RatingAndReviews(),
                  SizedBox(height: 24),

                  MoreCourses(),
                  SizedBox(height: 24),
                  CourseBy(),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.lightbulb,
                            color: Colors.deepPurple),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'More Similar Courses',
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.deepPurple),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Related Courses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  SliderOurCourse(
                      listItems: listItemsSlider,
                      height: MediaQuery.of(context).size.height * .60),
                  SizedBox(height: 24),
                  FooterContainer(),
                  SizedBox(height: 24),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
