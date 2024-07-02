import 'package:final_project_grad_flutter/models/course_model.dart';
import 'package:final_project_grad_flutter/views/our_courses_view_details.dart';
import 'package:final_project_grad_flutter/widgets/alert_dialog_search_widget.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_container.dart';
import 'package:flutter/material.dart';
class OurCoursesViewBody extends StatefulWidget {
  const OurCoursesViewBody({super.key});

  @override
  State<OurCoursesViewBody> createState() => _OurCoursesViewBodyState();
}

class _OurCoursesViewBodyState extends State<OurCoursesViewBody> {
  List<CourseModel> searchCourse = [];
  List<CourseModel> myCourse = [];
  List<CourseModel> Course = [
    CourseModel(
        image: 'assets/images/image1.jpeg',
        title: 'Development',
        subTitle: 'How to Market Yourself as Coach or Consultant Market',
        numberLessons: "6",
        numberStudent: "2",
        namePerson: 'Jhon Sina',
        price: 'Free',
        numberStart: '',
        rate: 0.0),
    CourseModel(
        image: 'assets/images/image2.jpeg',
        title: 'Accounting',
        subTitle: 'Complete Guitar Lessons System Beginner to Advanced',
        numberLessons: "3",
        numberStudent: "1",
        namePerson: 'Jhon Sina',
        price: '\$55.00',
        numberStart: '5.00',
        rate: 5.0),
    CourseModel(
        image: 'assets/images/image2.jpeg',
        title: 'Business',
        subTitle: 'User Experience The Ultimate Guide to Usability and UX',
        numberLessons: "4",
        numberStudent: "1",
        namePerson: 'Jhon Sina',
        price: '\$39.00',
        numberStart: '4.50',
        rate: 4.5),
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

    if (searchCourse.isEmpty) {
      setState(() {
        myCourse = Course;
      });
    } else {
      setState(() {
        myCourse = searchCourse;
      });
    }

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
                      "Our Courses",
                      style: TextStyle(
                        fontFamily: 'BonaNovaSC',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: AlertDialogSearchWidget(
                                      selectCategory: (value) {
                                        print("======================================");
                                        print(value);
                                        searchCourse.clear();
                                        for (var i in Course) {
                                          print(value.contains(i.title));
                                          if (value.contains(i.title)) {
                                            searchCourse.add(i);
                                            setState(() {});
                                            print(
                                                "=========================${searchCourse.length}======================");
                                          }
                                        }
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.search,
                              color: Colors.deepPurple,
                              size: 30,)),
                        IconButton(
                            onPressed: () {
                              searchCourse.clear();
                              setState(() {});
                            },
                            icon: Icon(Icons.refresh,
                              color: Colors.deepPurple,
                              size: 30,))
                      ],
                    )
                  ],
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return OurCoursesContainer(
                    onTap: () {
                      Navigator.pushNamed(context, OurCoursesViewDetails.id);
                    },
                    image: myCourse[index].image,
                    text: myCourse[index].title,
                    numberLessons: myCourse[index].numberLessons,
                    numberStudent: myCourse[index].numberStudent,
                    textDescription: myCourse[index].subTitle,
                    namePerson: myCourse[index].namePerson,
                    rate: myCourse[index].rate,
                    numberStart: myCourse[index].numberStart,
                    price: myCourse[index].price,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: myCourse.length,
              ),
              SizedBox(height: 24),
              FooterContainer(),
              SizedBox(height: 24),
            ],
          ),
        ),
      )
    );
  }
}
