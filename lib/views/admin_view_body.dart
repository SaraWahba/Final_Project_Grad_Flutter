import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminViewBody extends StatefulWidget {
  const AdminViewBody({super.key});

  @override
  State<AdminViewBody> createState() => _AdminViewBodyState();
}

class _AdminViewBodyState extends State<AdminViewBody> {
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
        child: SafeArea(
          child: Column(
            children: [

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
                      "Admin",
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 160),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0,
                                    blurRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                          width: 145,
                          height: 140,
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text("Admin",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BonaNovaSC'
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0,
                                    blurRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                          width: 145,
                          height: 140,
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text("Courses",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'BonaNovaSC'
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0,
                                    blurRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                          width: 145,
                          height: 140,
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text("Blog",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'BonaNovaSC'
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0,
                                    blurRadius: 3,
                                    offset: Offset(0, 3))
                              ]),
                          width: 145,
                          height: 140,
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text("Instructor",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'BonaNovaSC'
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
