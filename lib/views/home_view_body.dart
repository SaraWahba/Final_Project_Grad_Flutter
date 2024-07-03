import 'package:final_project_grad_flutter/models/blog_model.dart';
import 'package:final_project_grad_flutter/models/course_model.dart';
import 'package:final_project_grad_flutter/views/about_us_view.dart';
import 'package:final_project_grad_flutter/views/blog_view.dart';
import 'package:final_project_grad_flutter/views/contact_us_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:final_project_grad_flutter/widgets/blog/blog_container.dart';
import 'package:final_project_grad_flutter/widgets/counter_item.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/pricing.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../core/app_styles.dart';
import '../widgets/our_courses/our_courses_container.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  User user = FirebaseAuth.instance.currentUser!;

  List<CourseModel> Course = [
    CourseModel(
        image: 'assets/images/course1.jpg',
        title: 'Development',
        subTitle: 'How to Market Yourself as Coach or Consultant Market',
        numberLessons: "6",
        numberStudent: "2",
        namePerson: 'Jhon Sina',
        price: 'Free',
        numberStart: '',
        rate: 0.0),
    CourseModel(
        image: 'assets/images/course2.jpg',
        title: 'Accounting',
        subTitle: 'Complete Guitar Lessons System Beginner to Advanced',
        numberLessons: "3",
        numberStudent: "1",
        namePerson: 'Jhon Sina',
        price: '\$55.00',
        numberStart: '5.00',
        rate: 5.0),
    CourseModel(
        image: 'assets/images/course3.jpg',
        title: 'Business',
        subTitle: 'User Experience The Ultimate Guide to Usability and UX',
        numberLessons: "4",
        numberStudent: "1",
        namePerson: 'Jhon Sina',
        price: '\$39.00',
        numberStart: '4.50',
        rate: 4.5),
  ];

  List<BlogModel> Blog = [
    BlogModel(
        'assets/images/blog1.jpg',
        'Maximizing Your Learning Potential: A Guide to StudyHub',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'May 12, 2024',
        'Jhon Sina',
        'Story'
    ),
    BlogModel(
        'assets/images/blog2.jpg',
        'Announcing the winners the 2023 Education com Story',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'May 12, 2024',
        'Jhon Sina',
        'Story'
    ),
    BlogModel(
        'assets/images/blog3.jpg',
        'Azure AI Fundamentals: How to Pass the AI-900 Exam',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'May 12, 2024',
        'Jhon Sina',
        'Story'
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
      duration: const Duration(milliseconds: 200),
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
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? GestureDetector(
                            child: const Icon(Icons.arrow_back_ios,
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
                            child: const Icon(Icons.menu,
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
                    const Text(
                      "Home",
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
              const SizedBox(
                height: 16,
              ),
              // Container()
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                    // margin: EdgeInsets.symmetric(horizontal: 14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFFFE7CB),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset: Offset(0, 5))
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                               Text(
                                  "Welcome To",
                                  style: AppStyles.textStyle16,
                                  textAlign: TextAlign.center,
                                ),
                                 Text(
                                  "Think Tank",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            ClipRRect(
                              child: Image(image: AssetImage('assets/images/logo.png'),
                                height: 100,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Text(
                            "Education is the transmission of knowledge, skills, and character traits and manifests in various forms. Formal education occurs within a structured institutional framework, such as public schools.",
                            style: AppStyles.textStyle16,
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: getColor(
                                     Colors.deepPurple, Colors.transparent),
                                side: getBorder( Colors.deepPurple, Colors.white),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context,OurCoursesView.id);
                              },
                              child: const Text(
                                "Our Courses",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: getColor(
                                    Colors.transparent, Colors.deepPurple),
                                side: getBorder(Colors.white, Colors.deepPurple),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context,ContactUSView.id);
                              },
                              child: const Text(
                                "Contact Us",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CounterItem(icon: FontAwesomeIcons.userGraduate, title: '699,967', subTitle: 'Student',size: 30),
                            CounterItem(icon: FontAwesomeIcons.language, title: '30+', subTitle: 'language',size: 30),
                            CounterItem(icon: FontAwesomeIcons.user, title: '96,998', subTitle: 'Enrollments',size: 30),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CounterItem(icon: FontAwesomeIcons.globe, title: '73+', subTitle: 'Countries',size: 30),
                            CounterItem(icon: FontAwesomeIcons.calculator, title: '887+', subTitle: 'Enterprise\nCustomer',size: 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),

                  Container(
                    child: const Column(
                      children: [
                        Text('Pricing Table',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.deepPurple)),
                        SizedBox(height: 10),
                        Pricing(image: 'assets/images/blog1.jpg',title: 'Basic Plan',amount:'Free'),
                        SizedBox(height: 18),
                        Pricing(image: 'assets/images/blog2.jpg',title: 'Standard Plan',amount:'Free!'),
                        SizedBox(height: 18),
                        Pricing(image: 'assets/images/blog3.jpg',title: 'Premium Plan',amount:'\$149/Month'),
                      ],
                    ),
                  ),
                  const CustomDivider(
                    heigth: 10,
                    endIndent: 20,
                    indent: 20,
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text('Some The Courses',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black)),
                        const SizedBox(height: 10),
                        ListView.separated(
                          padding:const EdgeInsets.all(0),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return OurCoursesContainer(
                              image: Course[index].image,
                              text: Course[index].title,
                              numberLessons: Course[index].numberLessons,
                              numberStudent: Course[index].numberStudent,
                              textDescription: Course[index].subTitle,
                              namePerson: Course[index].namePerson,
                              rate: Course[index].rate,
                              numberStart: Course[index].numberStart,
                              price: Course[index].price,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: Course.length,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, OurCoursesView.id);
                          },
                          text: "Get to Courses",
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                          ),
                          width: 160,
                        )
                      ],
                    ),
                  ),
                  const CustomDivider(
                    heigth: 10,
                    endIndent: 20,
                    indent: 20,
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text('Latest on The Blog',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black)),
                        const SizedBox(height: 10),
                        ListView.separated(
                          padding: const EdgeInsets.all(0),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return BlogContainer(
                              image: Blog[index].image,
                              text: Blog[index].text,
                              textDescription: Blog[index].textDescription,
                              namePerson: Blog[index].namePerson,
                              data: Blog[index].data,
                              linkText: Blog[index].linkText,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: Blog.length,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, BlogView.id);
                          },
                            text: "Show all",
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                            ),
                            width: 100,
                        )
                      ],
                    ),
                  ),
                  const CustomDivider(
                    heigth: 10,
                    endIndent: 20,
                    indent: 20,
                    thickness: 2,
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text('About Us',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.deepPurple)),



                        CustomButton(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, AboutUSView.id);
                          },
                          text: "Show details",
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                          ),
                          width: 150,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //////////////////
              const SizedBox(height: 24),
              const FooterContainer(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }


  ///////////////////////////////////////////////
  getColor(Color white, Color deepPurple) {
    final getcolor = (Set<MaterialState> state) {
      if (state.contains(MaterialState.pressed)) {
        return deepPurple;
      } else {
        return white;
      }
    };
    return MaterialStateProperty.resolveWith(getcolor);
  }

  getBorder(Color color, Color white) {
    final getborder = (Set<MaterialState> state) {
      if (state.contains(MaterialState.pressed)) {
        return BorderSide(
          color: white,
          width: 2,
        );
      } else {
        return BorderSide(
          color: color,
          width: 2,
        );
      }
    };
    return MaterialStateProperty.resolveWith(getborder);
  }
}
