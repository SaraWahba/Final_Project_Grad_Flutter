import 'package:flutter/material.dart';
class IconsItem extends StatelessWidget {
  const IconsItem({super.key, required this.icon});
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Icon(icon,
       color: Colors.orange,
       size: 31);
  }
}
