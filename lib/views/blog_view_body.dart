import 'package:final_project_grad_flutter/models/blog_model.dart';
import 'package:final_project_grad_flutter/widgets/blog/blog_container.dart';
import 'package:final_project_grad_flutter/widgets/blog/recent%20_post_biog.dart';
import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:flutter/material.dart';
class BlogViewBody extends StatefulWidget {
  const BlogViewBody({super.key});

  @override
  State<BlogViewBody> createState() => _BlogViewBodyState();
}

class _BlogViewBodyState extends State<BlogViewBody> {
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
    BlogModel(
        'assets/images/blog4.jpg',
        'We are praying for our community and platform.',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'June 22, 2023',
        'Jhon Sina',
        'Story'
    ),
    BlogModel(
        'assets/images/blog5.jpg',
        'Here at First Baptist Cape Coral we believe!',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'May 12, 2024',
        'Jhon Sina',
        'Study'
    ),
    BlogModel(
        'assets/images/blog6.jpg',
        'Delivering What Consumers Really Value?',
        'We have covered many special events such as fireworks, fairs, parades, races, walks, awards ceremonies, fashion shows, sporting events, and even a memorial service....',
        'June 22, 2023',
        'Jhon Sina',
        'Technology'
    ),
  ];
  List<Widget> RecentPost= [
    RecentPostBlog(image: 'assets/images/blog1.jpg',time: ' May 12, 2024',text: 'Maximizing Your Learning Potential: A Guide to Think Tank'),
    RecentPostBlog(image: 'assets/images/blog2.jpg',time: ' May 12, 2024',text: 'Announcing the winners the 2023 Education com Story'),
    RecentPostBlog(image: 'assets/images/blog3.jpg',time: ' May 12, 2024',text: 'Azure AI Fundamentals: How to Pass the AI-900 Exam'),
    RecentPostBlog(image: 'assets/images/blog4.jpg',time: ' May 12, 2024',text: 'We are praying for our community and platform.'),
    RecentPostBlog(image: 'assets/images/blog5.jpg',time: ' May 12, 2024',text: 'Here at First Baptist Cape Coral we believe!'),
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
                      "Blog",
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
              /////////////////////////////
              ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 0),
                physics: NeverScrollableScrollPhysics(),
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
              ///////////////////////////////

              SizedBox(height: 24),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFF9F8FF),
                      boxShadow:[
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 6,
                            offset: Offset(0, 5))
                      ]),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text("Recent Post",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                            fontWeight: FontWeight.bold,
                            fontSize: 27
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return RecentPost[index];
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: RecentPost.length,
                      ),
                    ],
                  ),
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
