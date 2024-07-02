import 'package:flutter/material.dart';
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.onPressed});
  final String text ;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey.shade300,

        ),
        onPressed: onPressed,
        child: Text(text , style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
