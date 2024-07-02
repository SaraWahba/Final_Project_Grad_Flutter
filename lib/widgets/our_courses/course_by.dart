import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CourseBy extends StatelessWidget {
  const CourseBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 24),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'A course by',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            contentPadding: EdgeInsets.only(left: 0),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/instructor1.jpg'),
            ),
            title: InkWell(
              onTap: (){},
              child: Text('Jhon Sina',
              style: TextStyle(
                color: Color(0xFF646464),
                fontSize: 18
              ),
              ),
            ),
          ),

          SizedBox(height: 50),
          CustomDivider(heigth: 0, endIndent: 10, indent: 10, thickness: 1),
          SizedBox(height: 30),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Requirements',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(children: [
                Icon(Icons.check_circle_outline,
                color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Basic Programming',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
              SizedBox(height: 16),
              Row(children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Daily Update',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
              SizedBox(height: 16),
              Row(children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Routine Study',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
              SizedBox(height: 16),
              Row(children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Regular Join Class',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
            ],
          ),
          SizedBox(height: 50),
          CustomDivider(heigth: 0, endIndent: 10, indent: 10, thickness: 1),
          SizedBox(height: 30),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Share',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.black,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.black,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.black,
                      size: 30,
                    ),
              ]),
            ],
          ),
          SizedBox(height: 50),
          CustomDivider(heigth: 0, endIndent: 10, indent: 10, thickness: 1),
          SizedBox(height: 30),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Audience',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Technical People',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
              SizedBox(height: 16),
              Row(children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Engineering Students',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
              SizedBox(height: 16),
              Row(children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.deepPurple,),
                SizedBox(width: 10),
                Text('Programming Lover',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF646464)),
                )
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
