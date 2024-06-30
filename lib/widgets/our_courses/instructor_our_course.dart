import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstructorOurCourses extends StatelessWidget {
  const InstructorOurCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, top: 30, bottom: 30, right: 10),
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.deepPurple,
                spreadRadius: 0,
                blurRadius: 1,
                offset: Offset(0, 0))
          ]),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('assets/images/instructor1.jpg'),
                // width: 330,
                // height: 165,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 18),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: InkWell(
              onTap: () {},
              child: Text(
                'Jhon Sina',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Digital Marketing Instructor',
              style: TextStyle(
                color: Color(0xFF646464),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '4.50',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 8),
                  RatingBar.builder(
                    initialRating: 5,
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.group, color: Color(0xFF646464), size: 23),
                  SizedBox(width: 10),
                  Text(
                    '31 Student',
                    style: TextStyle(fontSize: 20, color: Color(0xFF646464)),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.video_camera_back_outlined,
                  color:Color(0xFF646464), size: 23),
              SizedBox(width: 10),
              Text(
                '8 Courses',
                style: TextStyle(fontSize: 20, color: Color(0xFF646464)),
              )
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Text(
              'As an English lecturer, I am fervently dedicated to shaping the linguistic and literary acumen of my students. With a profound passion for language education, I employ dynamic and innovative teaching methods to inspire a love for literature and effective communication. My commitment extends beyond the curriculum, fostering an environment where students develop critical thinking skills and a deep appreciation for the nuances of the English language.',
              style: TextStyle(fontSize: 20, color: Color(0xFF646464)),
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Follow',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                FaIcon(
                  FontAwesomeIcons.facebookF,
                  color: Color(0xFF646464),
                  size: 18,
                ),
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Color(0xFF646464),
                  size: 18,
                ),
                FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Color(0xFF646464),
                  size: 18,
                ),
                FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Color(0xFF646464),
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
