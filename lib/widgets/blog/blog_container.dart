import 'package:final_project_grad_flutter/widgets/blog/story.dart';
import 'package:flutter/material.dart';
class BlogContainer extends StatefulWidget {
  const BlogContainer({super.key, required this.image, required this.text, required this.data, required this.namePerson, required this.textDescription, required this.linkText});
  final String image ;
  final String text ;
  final String textDescription ;
  final String data ;
  final String namePerson ;
  final String linkText ;

  @override
  State<BlogContainer> createState() => _BlogContainerState();
}

class _BlogContainerState extends State<BlogContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
      margin: EdgeInsets.symmetric(horizontal: 14),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 6,
                offset: Offset(0, 5))
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(widget.image),
              width: 330,
              height: 165,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_month_outlined, color: Color(0xFF553CDF), size: 23),
                  SizedBox(width: 11),
                  Text(
                    widget.data,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF6B6B6B),
                      fontFamily: 'Merriweather',
                    ),
                  )
                ],
              ),
              SizedBox(width: 24),
              Row(
                children: [
                  Icon(Icons.person_2_outlined, color: Color(0xFF553CDF), size: 23),
                  SizedBox(width: 11),
                  Text(
                    widget.namePerson,
                    style: TextStyle(
                        fontSize: 18, color: Color(0xFF6B6B6B),
                      fontFamily: 'Merriweather',
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          InkWell(
            // onTap: widget.onTap,
            child: Text(widget.text,
              style:TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 19,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 16),
          Story(textDescription: widget.textDescription , linkText: widget.linkText),
        ],
      ),
    );
  }
}
