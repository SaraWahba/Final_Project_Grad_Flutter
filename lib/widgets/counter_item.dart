import 'package:flutter/material.dart';
class CounterItem extends StatelessWidget {
  const CounterItem({super.key, required this.icon, required this.title, required this.subTitle, required this.size});
final IconData icon;
final String title;
final String subTitle;
final double size ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
        size: size,
          color: Color(0xFF160840),
        ),
       SizedBox(height: 10),
       Text(title,style: const TextStyle(
        color: Color(0xFF160840),
         fontSize: 20,
         fontWeight: FontWeight.bold
       ),),
        SizedBox(height: 4),
        Text(subTitle,style: const TextStyle(
          fontFamily: 'Merriweather',
          color: Color(0xFF160840),
          // fontWeight: FontWeight.bold,
            fontSize: 18,
        ),)
,      ],
    );
  }
}
