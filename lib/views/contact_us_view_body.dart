import 'package:final_project_grad_flutter/widgets/custom_item.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/form_contact_us.dart';
import 'package:flutter/material.dart';

class ContactUsViewBody extends StatefulWidget {
  const ContactUsViewBody({super.key});

  @override
  State<ContactUsViewBody> createState() => _ContactUsViewBodyState();
}

class _ContactUsViewBodyState extends State<ContactUsViewBody> {

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
                    child: Text('Contact Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white)),
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
              SizedBox(height: 24),
             //////////////////////////////////
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomItem(
                                text: 'Our Website',
                                text1: 'www.eduvibe.com',
                                text2: 'www.wpvive.com',
                                icon: Icons.language,
                                colors: Color(0xFFEDEDF7),
                                color: Color(0xFF6F72AE)),

                            CustomItem(
                                text: 'Call Us On',
                                text1: '+2763(388)2930',
                                text2: '+4875(356)2568',
                                icon: Icons.call,
                                colors: Color(0xFFFBF3EC),
                                color: Color(0xFFDC8347))
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomItem(
                                text: 'Email Us',
                                text1: 'eduvibe@mail.com',
                                text2: 'wpvive@mail.com',
                                icon: Icons.email_outlined,
                                colors: Color(0xFFFBF3EC),
                                color: Color(0xFFDC8347)),
                            CustomItem(
                                text: 'Our Location',
                                text1: '486 Normana Avenue',
                                text2: 'Marningtide, 4223',
                                icon: Icons.location_on_outlined,
                                colors: Color(0xFFEDEDF7),
                                color: Color(0xFF6F72AE)
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    FormContactUs(),
                  ],
                ),
              ),
            //////////////////////////////////
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
