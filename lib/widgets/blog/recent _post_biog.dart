import 'package:flutter/material.dart';
class RecentPostBlog extends StatelessWidget {
  const RecentPostBlog({super.key, required this.image, required this.time, required this.text});
  final String image ;
  final String time ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 130,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage(image),
            fit: BoxFit.fill,),
          ),
        ),
        Container(
          width: 180,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.watch_later_outlined, color: Color(0xFF6B6B6B), size: 23),
                  SizedBox(width: 5),
                  Text(time,
                    style: TextStyle(fontSize: 18, color: Color(0xFF6B6B6B)),
                  )
                ],
              ),
              SizedBox(height: 5),
              Text(text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
