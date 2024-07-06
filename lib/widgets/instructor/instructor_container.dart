import 'package:final_project_grad_flutter/widgets/instructor/icons_share.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InstructorContainer extends StatefulWidget {
  const InstructorContainer({super.key, required this.image, required this.nameInstructor, required this.jobInstructor, this.onTap});
  final String image ;
  final String nameInstructor ;
  final String jobInstructor ;
  final void Function()? onTap ;

  @override
  State<InstructorContainer> createState() => _InstructorContainerState();
}

class _InstructorContainerState extends State<InstructorContainer> {
  bool openShare=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFF9F8FE),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: Offset(0, 0))
                    ]),
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                    child: Image(
                        image: AssetImage(widget.image),
                        fit: BoxFit.fill,
                    ),
                ),
              ),
              Positioned(
                top: 20,
                left: 330,
                child: Column(
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                        openShare=!openShare;
                      });
                    },child: IconsShare(icon: openShare==true?FontAwesomeIcons.xmark:FontAwesomeIcons.shareNodes)),

                    if(openShare==true)
                    const Column(
                      children: [
                        SizedBox(height: 16),
                        IconsShare(icon: FontAwesomeIcons.facebookF),
                        SizedBox(height: 16),
                        IconsShare(icon: FontAwesomeIcons.twitter),
                        SizedBox(height: 16),
                        IconsShare(icon: FontAwesomeIcons.youtube),
                        SizedBox(height: 16),
                        IconsShare(icon: FontAwesomeIcons.instagram),
                        SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          InkWell(
            onTap: widget.onTap,
            child: Text(widget.nameInstructor,
            style:TextStyle(
                fontFamily: 'Merriweather',
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black
            ) ,
            ),
          ),
          Text(widget.jobInstructor,
            style:TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 18,
                color: Color(0xFF646464)
            ) ,
          ),
        ],
      ),
    );
  }
}
