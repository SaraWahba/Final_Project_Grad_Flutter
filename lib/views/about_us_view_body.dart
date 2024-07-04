import 'package:final_project_grad_flutter/models/instructor_model.dart';
import 'package:final_project_grad_flutter/views/instructor_view.dart';
import 'package:final_project_grad_flutter/views/instructor_view_details.dart';
import 'package:final_project_grad_flutter/widgets/choose_container.dart';
import 'package:final_project_grad_flutter/widgets/custom_about.dart';
import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:final_project_grad_flutter/widgets/custom_slider.dart';
import 'package:final_project_grad_flutter/widgets/feedback_container.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/instructor/instructor_container.dart';
import 'package:final_project_grad_flutter/widgets/trainer_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AboutUsViewBody extends StatefulWidget {
  const AboutUsViewBody({super.key});

  @override
  State<AboutUsViewBody> createState() => _AboutUsViewBodyState();
}

class _AboutUsViewBodyState extends State<AboutUsViewBody> {
  List<Widget> listItemsSlider = const [
    FeedbackContainer(
      numberReviews: "18",
      rate: 2,
      text:
      'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/student2.jpg',
      name: 'Chase Kroll',
      work: 'It Specialist',
    ),
    FeedbackContainer(
      numberReviews: "30",
      rate: 3.5,
      text:
      'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/student1.jpg',
      name: 'Emma Elizabeth',
      work: 'Assistant Teacher',
    ),
    FeedbackContainer(
      numberReviews: "25",
      rate: 5,
      text:
      'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/student2.jpg',
      name: 'Chase Kroll',
      work: 'Teacher',
    ),
    FeedbackContainer(
      numberReviews: "17",
      rate: 5,
      text:
      'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/student2.jpg',
      name: 'Heidi POt',
      work: 'Teacher',
    ),
  ];
  List<InstructorModel> listInstructor=[
  InstructorModel(image: 'assets/images/instructor3.jpg', nameInstructor: 'Dana White', jobInstructor: 'UI/UX Exparet'),
  InstructorModel(image: 'assets/images/instructor4.jpg', nameInstructor: 'Elizabeth Olsen', jobInstructor: 'Assistant Teacher'),
  InstructorModel(image: 'assets/images/instructor5.jpg', nameInstructor: 'Jons Emon', jobInstructor: 'Assistant Teacher'),
  InstructorModel(image: 'assets/images/instructor2.png', nameInstructor: 'Mahmud Sujons', jobInstructor:'Instructor'),
  ];
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
             Stack(
               children: [
                 Container(
                   padding: EdgeInsets.only(left: 16,right: 16,top: 90,bottom: 14),
                   height: 200,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                       color: Colors.deepPurple,
                       boxShadow: [
                         BoxShadow(
                             color: Colors.grey,
                             spreadRadius: 0,
                             blurRadius: 3,
                             offset: Offset(0, 0))
                       ]
                   ),
                   child: Text('About Us',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           fontFamily: 'Merriweather',
                           fontWeight: FontWeight.bold,
                           fontSize: 28,
                           color: Colors.white)),
                 ),
                 SizedBox(
                   height: 16,
                 ),
                 Container(
                   margin: const EdgeInsets.only(top: 60,left: 20,right: 20),
                   child: isDrawerOpen
                       ? GestureDetector(
                     child: Icon(Icons.arrow_back_ios,
                       color: Colors.white,
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
                       color: Colors.white,
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
               ],
             ),

              SizedBox(
                height: 16,
              ),
              ///////////////////
              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 0),
              //   height: 200,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: const BoxDecoration(
              //     boxShadow: <BoxShadow>[
              //       BoxShadow(
              //           color: Colors.black54,
              //           blurRadius: 8,
              //           offset: Offset(1, 0))
              //     ],
              //   ),
              //   child: const Image(
              //     image: AssetImage('assets/images/about us.jpeg'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const CustomAbout(),
              const ChooseContainer(),
              const TrainerContainer(),
              CustomSlider(
                  listItems: listItemsSlider,
                  height: MediaQuery.of(context).size.height * .45),
              //////////////////
              SizedBox(height: 24),
              Column(
                children: [
                 Padding(
                   padding: EdgeInsets.only(left: 8),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           FaIcon(FontAwesomeIcons.lightbulb,
                               color: Colors.deepPurple),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 10),
                             child: Align(
                               alignment: AlignmentDirectional.centerStart,
                               child: Text(
                                 'Instructor',
                                 style: TextStyle(
                                   // fontWeight: FontWeight.bold,
                                     fontSize: 18,
                                     color: Colors.deepPurple),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 16),
                       Align(
                         alignment: AlignmentDirectional.centerStart,
                         child: Text(
                           'Our Professional Instructor',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 22,
                               color: Colors.black),
                         ),
                       ),
                       SizedBox(height: 16),
                       Align(
                         alignment: AlignmentDirectional.centerStart,
                         child: Text(
                           'You\'ll find something to spark your curiosity and enhance',
                           style: TextStyle(
                               fontSize: 16,
                               color: Colors.black38),
                         ),
                       ),
                       SizedBox(height: 20),
                       Align(
                         alignment: AlignmentDirectional.centerStart,
                         child: CustomButton(
                           onTap: (){
                             Navigator.pushNamed(context, InstructorView.id);
                           },
                           text: 'View all Instructors',
                           color: Colors.deepPurple,
                           textStyle: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                               color: Colors.white
                           ),
                           height: 50,
                           width: 200,
                         ),
                       ),
                     ],
                   ),
                 ),
                  SizedBox(height: 20),
                  ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InstructorContainer(
                          image: listInstructor[index].image,
                          nameInstructor: listInstructor[index].nameInstructor,
                          jobInstructor: listInstructor[index].jobInstructor,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => InstructorViewDetails(
                              image: listInstructor[index].image,
                              name:listInstructor[index].nameInstructor ,
                            ),),
                            );
                          },
                        );
                      }, separatorBuilder: (context, index) => SizedBox(height: 18,), itemCount: listInstructor.length),
                ],
              ),
              SizedBox(height: 24),
              FooterContainer(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
