import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OurCoursesDetailsContainer extends StatelessWidget {
  const OurCoursesDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0xFFF9F8FE),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 3,
                offset: Offset(0, 0))
          ]),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'How to Market Yourself as Coach or Consultant Market',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: RatingBar.builder(
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
              ),
              SizedBox(width: 10),
              Text('4.00',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 10),
              Text('(2 Rating)',
                style: TextStyle(
                  color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.group, color: Colors.grey, size: 23),
              SizedBox(width: 11),
              Text(
                '1 Student',
                style: TextStyle(fontSize: 21, color: Colors.grey),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.book_outlined, color: Colors.grey, size: 23),
                  SizedBox(width: 11),
                  Text(
                    'Last Updated:',
                    style: TextStyle(fontSize: 21, color: Colors.grey),
                  )
                ],
              ),
              Text(' Apr 30,2024',
                  style: TextStyle(fontSize: 21, color: Colors.grey)),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/image1.jpeg'),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RichText(
                text: const TextSpan(
                  text: 'By ',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Jhon Sina',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 21)),
                  ],
                ),
              ),
            ),
            subtitle: RichText(
              text: const TextSpan(
                text: 'Categories: ',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Development',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21)),
                ],
              ),
            ),
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
