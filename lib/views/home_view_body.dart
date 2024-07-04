import 'package:final_project_grad_flutter/models/blog_model.dart';
import 'package:final_project_grad_flutter/models/course_model.dart';
import 'package:final_project_grad_flutter/models/programtopic.dart';
import 'package:final_project_grad_flutter/models/road_map_model.dart';
import 'package:final_project_grad_flutter/views/about_us_view.dart';
import 'package:final_project_grad_flutter/views/blog_view.dart';
import 'package:final_project_grad_flutter/views/contact_us_view.dart';
import 'package:final_project_grad_flutter/views/our_courses_view.dart';
import 'package:final_project_grad_flutter/views/topics_post_view.dart';
import 'package:final_project_grad_flutter/widgets/blog/blog_container.dart';
import 'package:final_project_grad_flutter/widgets/counter_item.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/pricing.dart';
import 'package:final_project_grad_flutter/widgets/road_map/road_map_container.dart';
import 'package:final_project_grad_flutter/widgets/road_map/row_road_map.dart';
import 'package:final_project_grad_flutter/widgets/topics/topic_post.dart';
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
        'Story'),
    BlogModel(
        'assets/images/blog2.jpg',
        'Announcing the winners the 2023 Education com Story',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'May 12, 2024',
        'Jhon Sina',
        'Story'),
    BlogModel(
        'assets/images/blog3.jpg',
        'Azure AI Fundamentals: How to Pass the AI-900 Exam',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'May 12, 2024',
        'Jhon Sina',
        'Story'),
  ];

  List<ProgramTopic> Topic = [
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
  ];
  
  List<RoadMapModel> roadMap = [
    RoadMapModel(
        'Frontend Developer',
        'Dragontail, Ascana',
        'Converting data to a graphical interface, through the use of HTML, CSS, and JavaScript, so that users can view and interact with that data.',
        'View Frontend',
        Color(0xFF357C38),
        FontAwesomeIcons.laptop,
         Color(0xFF357C38),
    ),
    RoadMapModel(
        'Backend Developer',
        'Skystead, Craonia',
        'Working hand-in-hand with front-end developers by providing the outward facing web application elements server-side logic. Creating the logic to make the web app function properly, and accomplishing this through the use of server-side scripting languages.',
        'View Backend ',
        Color(0xFF357C38),
        FontAwesomeIcons.laptop,
      Color(0xFF357C38),
    ),
    RoadMapModel(
        'Quality Assurance Engineer',
        'South Warren, Geshington',
        'Assessing the quality of specifications and technical design documents in order to ensure timely, relevant and meaningful feedback.',
        'View Quality ',
        Color(0xFF357C38),
        FontAwesomeIcons.laptop,
        Color(0xFF357C38),
    ),
    RoadMapModel(
        'Machine Learning Engineer ',
        'South Warren, Geshington',
        'Problem Understanding and Data Exploration;, Model Development, Data Preparation, Model Evaluation and Validation',
        'View Machine ',
        Colors.orange,
        FontAwesomeIcons.graduationCap,
        Colors.orange,
    ),
    RoadMapModel(
        'Ui/UX ',
        'Skystead, Craonia',
        'College - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque sagittis tellus, non ultrices lacus tempus vel.',
        'View Ui/UX ',
        Colors.orange,
        FontAwesomeIcons.graduationCap,
        Colors.orange,
    ),
    RoadMapModel(
        'Game Development',
        'Dragontail, Ascana',
        'Game development is the process of creating video games using technical knowledge and skills to turn game concepts and ideas into reality.',
        'View Game ',
        Colors.orange,
        FontAwesomeIcons.laptop,
        Colors.orange,
    ),
    RoadMapModel(
        'Python developer ',
        'Westfield, Andora',
        'Explore web frameworks like Django and Flask Build RESTful APIs using Flask or Django REST FrameworkIntegrate frontend frameworks like React for dynamic web applications.',
        'View Python',
      Color(0xFF357C38),
      FontAwesomeIcons.laptop,
      Color(0xFF357C38),
    ),
    RoadMapModel(
        'Cyber security enginner',
        'Greenwood, Andora',
        'focus on protecting data and preventing disruptions caused by digital attacks. While these engineers duties often overlap those of cybersecurity analysts.',
        'View Cyber',
      Color(0xFF357C38),
      FontAwesomeIcons.laptop,
      Color(0xFF357C38),
    ),
    RoadMapModel(
        'Flutter Developer ',
        'Remote',
        'A Flutter developer uses Flutter a popular open- source framework by Google to create cross- platform mobile applications. These developers can deliver high-quality, visually appealing applications that can significantly boost a companys mobile presence.',
        'View Flutter',
      Color(0xFF357C38),
      FontAwesomeIcons.laptop,
      Color(0xFF357C38),
    ),
    RoadMapModel(
        'Network Engineer Code',
        'Academy, Techville',
        'Network engineers set up, develop and maintain physical and wireless computer networks within an organisation or between organisations.',
        'View Network',
      Colors.orange,
      FontAwesomeIcons.graduationCap,
      Colors.orange,
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
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(15) : BorderRadius.circular(0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: isDrawerOpen
              ? BorderRadius.circular(15)
              : BorderRadius.circular(0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Container()
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 14,right: 14,top: 80,bottom: 14),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFEAEAEA),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0,
                                  blurRadius: 3,
                                  offset: Offset(0, 2))
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
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "Think Tank",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'BonaNovaSC',
                                          fontSize: 28),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  child: Image(
                                    image: AssetImage('assets/images/logo.png'),
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
                                    side:
                                    getBorder(Colors.deepPurple, Colors.white),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10))),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, OurCoursesView.id);
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
                                    side:
                                    getBorder(Colors.white, Colors.deepPurple),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10))),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, ContactUSView.id);
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
                        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        child: const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CounterItem(
                                    icon: FontAwesomeIcons.userGraduate,
                                    title: '699,967',
                                    subTitle: 'Student',
                                    size: 28),
                                CounterItem(
                                    icon: FontAwesomeIcons.language,
                                    title: '30+',
                                    subTitle: 'language',
                                    size: 28),
                                CounterItem(
                                    icon: FontAwesomeIcons.chalkboardUser,
                                    title: '96,998',
                                    subTitle: 'Enrollments',
                                    size: 28),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CounterItem(
                                    icon: FontAwesomeIcons.globe,
                                    title: '73+',
                                    subTitle: 'Countries',
                                    size: 28),
                                CounterItem(
                                    icon: FontAwesomeIcons.building,
                                    title: '887+',
                                    subTitle: 'Enterprise\nCustomer',
                                    size: 28),
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
                                  fontFamily: 'Merriweather',
                                  fontWeight:FontWeight.bold,
                                  fontSize: 24),),
                            SizedBox(height: 10),
                            Pricing(
                                image: 'assets/images/blog1.jpg',
                                title: 'Basic Plan',
                                amount: 'Free'),
                            SizedBox(height: 18),
                            Pricing(
                                image: 'assets/images/blog2.jpg',
                                title: 'Standard Plan',
                                amount: 'Free!'),
                            SizedBox(height: 18),
                            Pricing(
                                image: 'assets/images/blog3.jpg',
                                title: 'Premium Plan',
                                amount: '\$149/Month'),
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
                                    fontFamily: 'Merriweather',
                                    fontWeight:FontWeight.bold,
                                    fontSize: 24)),
                            const SizedBox(height: 10),
                            ListView.separated(
                              padding: const EdgeInsets.all(0),
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
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, OurCoursesView.id);
                              },
                              text: "Get to Courses",
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
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
                                    fontFamily: 'Merriweather',
                                    fontWeight:FontWeight.bold,
                                    fontSize: 24)),
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
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, BlogView.id);
                              },
                              text: "Show all",
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
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
                            const Text('PROGRAMMING TOPICS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black)),
                            SizedBox(height: 5),
                            Divider(
                                height: 0,
                                thickness: 2,
                                endIndent: 100,
                                indent: 100,
                                color: Colors.grey),
                            SizedBox(height: 5),
                            const Text(
                                'read about the most important programming and web development topics',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            SizedBox(height: 16),
                            ListView.separated(
                              padding: const EdgeInsets.all(0),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return TopicsPostsContainer(
                                  image: Topic[index].image,
                                  text: Topic[index].text,
                                  person: Topic[index].person,
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return const SizedBox(
                                  height: 18,
                                );
                              },
                              itemCount: Topic.length,
                            ),
                            SizedBox(height: 16),
                            CustomButton(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, TopicsPostView.id);
                              },
                              text: "Show More...",
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 23),
                              height: 50,
                              width: 170,
                            ),

                          ],
                        ),
                      ),
                      const CustomDivider(
                        heigth: 10,
                        endIndent: 20,
                        indent: 20,
                        thickness: 2,
                      ),
                      ////////////////////////////////////////////////
                      Column(
                        children: [
                          Text('Road Map',
                              style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black)),



                          ListView.separated(
                            padding: const EdgeInsets.all(0),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return RowRoadMap(
                                text: roadMap[index].text,
                                subText: roadMap[index].subText,
                                decText: roadMap[index].decText,
                                butText: roadMap[index].butText,
                                color: roadMap[index].color,
                                icon: roadMap[index].icon,
                                butColor: roadMap[index].butColor,
                              )
                              ;
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(
                                height: 20,
                              );
                            },
                            itemCount: roadMap.length,
                          ),
                         
                        ],
                      ),
                      ///////////////////////////////////////////////
                      const SizedBox(height: 24),
                      const FooterContainer(),
                      const SizedBox(height: 24),
                    ],
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 60,left: 20,right: 20),
                    child: isDrawerOpen
                        ? GestureDetector(
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      onTap: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          isDrawerOpen = false;
                        });
                      },
                    )
                        : GestureDetector(
                      child: const Icon(
                        Icons.menu,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      onTap: () {
                        setState(() {
                          xOffset = 290;
                          yOffset = 80;
                          isDrawerOpen = true;
                        });
                      },
                    ),
                  ),
                ],
              ),
              //////////////////

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
