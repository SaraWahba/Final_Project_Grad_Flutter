import 'package:final_project_grad_flutter/models/programtopic.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/topics/topic_post.dart';
import 'package:flutter/material.dart';

class TopicsPostViewBody extends StatefulWidget {
  const TopicsPostViewBody({super.key});

  @override
  State<TopicsPostViewBody> createState() => _TopicsPostViewBodyState();
}

class _TopicsPostViewBodyState extends State<TopicsPostViewBody> {

  List<ProgramTopic> Topic = [
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
    ProgramTopic('assets/images/security.png', 'Discover the benefits of functional programming maintainability.', 'admin'),
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
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16,top: 110,bottom: 14),
                    height: 260,
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
                    child: Column(
                      children: [
                        Text('Learn Programming Topic and web Development',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white)),
                        SizedBox(height: 10,),
                        Text(
                            'read about the most important programming and web development topics',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )),
                      ],
                    ),
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
              SizedBox(height: 16),
              // const Text('PROGRAMMING TOPICS',
              //     style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 23,
              //         color: Colors.deepPurple)),
              // SizedBox(height: 5),
              // Divider(
              //     height: 0,
              //     thickness: 2,
              //     endIndent: 100,
              //     indent: 100,
              //     color: Colors.grey),
              // SizedBox(height: 5),
              // const Text(
              //     'read about the most important programming and web development topics',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontSize: 14,
              //     )),
              // SizedBox(height: 16,),
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
              const SizedBox(height: 24),
              const FooterContainer(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
