import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:final_project_grad_flutter/widgets/road_map/road_map_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RowRoadMap extends StatelessWidget {
  const RowRoadMap({super.key, required this.text, required this.subText, required this.decText, required this.butText, required this.color, required this.icon, required this.butColor});
  final String text ;
  final String subText ;
  final String decText ;
  final String butText ;
  final Color color ;
  final Color butColor ;
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50,top:16),
              child: RoadMapContainer(
                text: text,
                subText: subText,
                decText:decText,
                butText: butText,
                butColor: butColor,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundColor: color,
                child: FaIcon(icon,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
