import 'package:final_project_grad_flutter/models/instructor_model.dart';
import 'package:final_project_grad_flutter/views/instructor_view_details.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/instructor/instructor_container.dart';
import 'package:flutter/material.dart';
class InstructorViewBody extends StatefulWidget {
  const InstructorViewBody({super.key});

  @override
  State<InstructorViewBody> createState() => _InstructorViewBodyState();
}

class _InstructorViewBodyState extends State<InstructorViewBody> {

  List<InstructorModel> listInstructor=[
    InstructorModel(image: 'assets/images/instructor3.jpg', nameInstructor: 'Dana White', jobInstructor: 'UI/UX Exparet'),
    InstructorModel(image: 'assets/images/instructor4.jpg', nameInstructor: 'Elizabeth Olsen', jobInstructor: 'Assistant Teacher'),
    InstructorModel(image: 'assets/images/instructor5.jpg', nameInstructor: 'Jons Emon', jobInstructor: 'Assistant Teacher'),
    InstructorModel(image: 'assets/images/instructor2.png', nameInstructor: 'Mahmud Sujons', jobInstructor:'Instructor'),
    InstructorModel(image: 'assets/images/instructor6.jpg', nameInstructor: 'Masud Rana', jobInstructor:'Instructor'),
    InstructorModel(image: 'assets/images/instructor1.jpg', nameInstructor: 'Jhon Sina', jobInstructor:'Assistant Teacher'),
    InstructorModel(image: 'assets/images/instructor7.jpg', nameInstructor: 'Thomas Fred', jobInstructor:'Assistant Teacher'),
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
                      "Instructor",
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
              Column(
                children: [
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


                  const SizedBox(height: 24),
                  const FooterContainer(),
                  const SizedBox(height: 24),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
