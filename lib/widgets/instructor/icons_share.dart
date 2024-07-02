import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class IconsShare extends StatelessWidget {
  const IconsShare({super.key, required this.icon});
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
        padding: EdgeInsets.symmetric(horizontal:6, vertical: 6),
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 0))
            ]),
        child: FaIcon(icon,
          size: 18,
          color: Colors.deepPurple,
        )
    );
  }
}
