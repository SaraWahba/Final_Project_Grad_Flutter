import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class RoadMapContainer extends StatelessWidget {
  const RoadMapContainer({super.key, required this.text, required this.subText, required this.decText, required this.butText, required this.butColor});
  final String text ;
  final String subText ;
  final String decText ;
  final String butText ;
  final Color butColor ;



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
    margin:  EdgeInsets.symmetric(horizontal: 14),
    padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    decoration: BoxDecoration(
        color: Color(0xFFEAEAEA),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 3,
              offset: Offset(0, 3))
        ],
    borderRadius: BorderRadius.only(
    topRight: const Radius.circular(14),
    bottomLeft:  const Radius.circular(14) ,
    bottomRight:  Radius.circular(14),
    ),
    ),
      width: 310,
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Merriweather',
                    color: Colors.black)),
          ),
          SizedBox(height: 7),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(subText,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black)),
          ),
          SizedBox(height: 7),
          Text(decText,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black)
            // textAlign: TextAlign.center,
          ),
          SizedBox(height: 7),
          CustomButton(text: butText,
            color: butColor,
            width: 180,
          )
        ],
      ),
    );
  }
}
