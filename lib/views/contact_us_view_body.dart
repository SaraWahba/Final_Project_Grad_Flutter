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
                      "Contact Us",
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
                height: 16,
              ),
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
