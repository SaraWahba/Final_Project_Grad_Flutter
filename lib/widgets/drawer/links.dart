import 'package:flutter/material.dart';
class Links extends StatelessWidget {
  const Links({super.key, required this.text, this.onTap});
   final String text ;
   final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: InkWell(
        child:Text(text,
          style: TextStyle(
              fontFamily: 'BonaNovaSC',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
