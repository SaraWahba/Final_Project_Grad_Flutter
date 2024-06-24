import 'package:flutter/material.dart';

class AuthTextWidget extends StatelessWidget {
  const AuthTextWidget({super.key, required this.text});
  final String text ;
  @override
  Widget build(BuildContext context) {
    return Text(
         text,
      textAlign: TextAlign.center,
      style:TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      )  ,
    );
  }
}

  
