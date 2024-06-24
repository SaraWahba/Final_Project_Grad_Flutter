import 'package:flutter/material.dart';
class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.text, required this.icon, required this.colors, required this.color, required this.text1, required this.text2});
  final String text , text1, text2 ;
  final IconData icon ;
  final Color colors , color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 3,
              // offset: Offset(0.0, 0.25)
          )
        ],
      ),
      width: 180,
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CircleAvatar(
             radius: 22,
             backgroundColor: colors,
             child: Icon(icon,color: color,size: 30),
           ),
          SizedBox(height: 17.5),
          Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ),
          SizedBox(height: 17.5),
          Text(text1),
          Text(text2),
        ],
      ),
    );
  }
}
