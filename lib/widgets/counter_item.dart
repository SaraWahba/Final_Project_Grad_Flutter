import 'package:flutter/material.dart';
class CounterItem extends StatelessWidget {
  const CounterItem({super.key, required this.icon, required this.title, required this.subTitle});
final IconData icon;
final String title;
final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
        size: 35),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 16),
         child: Text(title,style: const TextStyle(
           fontSize: 18,
           fontWeight: FontWeight.bold
         ),),
       ),
        Text(subTitle,style: const TextStyle(
            fontSize: 16,
        ),)
,      ],
    );
  }
}
