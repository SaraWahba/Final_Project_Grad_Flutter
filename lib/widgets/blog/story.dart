import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Story extends StatefulWidget {
  const Story({super.key, required this.textDescription, required this.linkText});
  final String textDescription ;
  final String linkText ;

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildText(
            widget.textDescription),
        InkWell(
          onTap: () {
            setState(() {
              isReadMore = !isReadMore;
            });
          },
          child: isReadMore
              ? Text('')
              : Align(
            alignment: AlignmentDirectional.centerStart,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFFEEEBFF),
              ),
              child: Text(
                (widget.linkText),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildText(String text) {
    final lines = isReadMore ? null : 1;
    return Text(
      isReadMore ? text : '',
      style: TextStyle(fontSize: 20, color: Color(0xFF6B6B6B)),
      maxLines: lines,
    );
  }
}
