import 'package:flutter/material.dart';
class TextAndIcon extends StatelessWidget {
  const TextAndIcon({super.key, required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Icon(Icons.check,
              size: 25,
              color: Colors.grey),
              SizedBox(width: 10,),
              Text(text,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20
              ),)
            ],
          );
  }
}

