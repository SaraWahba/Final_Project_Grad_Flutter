import 'package:final_project_grad_flutter/widgets/footer/footer_container.dart';
import 'package:final_project_grad_flutter/widgets/our_courses/our_courses_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InstructorViewDetailsBody extends StatefulWidget {
  const InstructorViewDetailsBody({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  State<InstructorViewDetailsBody> createState() => _InstructorViewDetailsBodyState();
}

class _InstructorViewDetailsBodyState extends State<InstructorViewDetailsBody> {

  final double coverHeight = 200;
  final double imageHeight = 144;
  List<Widget> listCourses = const [
    OurCoursesContainer(
      image: 'assets/images/image1.jpeg',
      text: 'Development',
      numberLessons: '6',
      numberStudent: '2',
      textDescription: 'How to Market Yourself as Coach or Consultant Market',
      namePerson: 'Jhon Sina',
      rate: 0.0,
      numberStart: '',
      price: '\$44.00',
    ),
    OurCoursesContainer(
      image: 'assets/images/image2.jpeg',
      text: 'Accounting',
      numberLessons: '3',
      numberStudent: '1',
      textDescription: 'Complete Guitar Lessons System Beginner to Advanced',
      namePerson: 'Jhon Sina',
      rate: 5.0,
      numberStart: '5.00',
      price: '\$55.00',
    ),
    OurCoursesContainer(
      image: 'assets/images/image2.jpeg',
      text: 'Business',
      numberLessons: '4',
      numberStudent: '1',
      textDescription: 'User Experience The Ultimate Guide to Usability and UX',
      namePerson: 'Jhon Sina',
      rate: 4.5,
      numberStart: '4.50',
      price: '\$39.00',
    ),
  ];

  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - imageHeight /2 ;
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

                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: imageHeight/2),
                            child: buildCover()),
                        Positioned(
                            top: top ,
                            child: buildInstructorImage()),
                      ],
                    ),
                    SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 24.0,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(width: 10),
                        Text('4.00',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(widget.name,
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black
                      ) ,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '8 Courses .',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(width: 11),
                        Text(
                          '31 Students',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text('Biography',
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black
                          ) ,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.only(left: 15 , right: 20),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text('As an English lecturer, I am fervently dedicated to shaping the linguistic and literary acumen of my students. With a profound passion for language education, I employ dynamic and innovative teaching methods to inspire a love for literature and effective communication. My commitment extends beyond the curriculum, fostering an environment where students develop critical thinking skills and a deep appreciation for the nuances of the English language.',
                          style:TextStyle(
                              fontSize: 18,
                              color: Color(0xFF5A5A5A)
                          ) ,
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.only(left: 15 ,right: 200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Color(0xFF5A5A5A),
                            size: 18,
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFF5A5A5A),
                            size: 18,
                          ),
                          FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Color(0xFF5A5A5A),
                            size: 18,
                          ),
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFF5A5A5A),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: listCourses.length,
                      itemBuilder: (BuildContext context, int index){
                        return listCourses[index] ;
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height:18);
                      },),
                    SizedBox(height: 24),
                    FooterContainer(),
                    SizedBox(height: 24),
                  ],
                ),

                Positioned(
                  top: 15,
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
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
                  ),
                ),
              ],
             ),

           ],
         ),
       ),
     ),
    );
  }



  ///////////////////////////////////////
  Widget buildCover() => Container(
    // padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    // margin: EdgeInsets.symmetric(horizontal: 8),
    height: coverHeight,
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
        ]),
  );


  /////////////////

  Widget buildInstructorImage() => CircleAvatar(
    backgroundColor: Colors.white,
    radius: 78,
    child: CircleAvatar(
      radius: imageHeight / 2 ,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage(widget.image),
    ),
  );
}
