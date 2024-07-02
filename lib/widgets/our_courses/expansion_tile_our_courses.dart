import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ExpansionTileOurCourse extends StatelessWidget {
  const ExpansionTileOurCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.deepPurple,
                spreadRadius: 0,
                blurRadius: 1,
                offset: Offset(0, 0))
          ]),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(4),topRight: Radius.circular(4)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepPurple,
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0, 0))
                ]),
            child: ExpansionTile(
              textColor: Colors.deepPurple,
              shape: Border(),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mean Median Mode',
                      style: TextStyle(
                        fontSize: 16,
                      )
                  ),
                  Text('2 Lectures .\n16h:03min'),
                ],
              ),
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon( FontAwesomeIcons.youtube),
                            SizedBox(width: 15),
                            Text('Mean Median Mode'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('10:54'),
                            SizedBox(width: 15),
                            Icon(Icons.visibility_outlined)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon( FontAwesomeIcons.youtube),
                            SizedBox(width: 15),
                            Text('What is Standard Deviation?'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('05:09'),
                            SizedBox(width: 15),
                            Icon(Icons.visibility_outlined)
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
              trailing: SizedBox(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepPurple,
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0, 0))
                ]),
            child: ExpansionTile(
              textColor: Colors.deepPurple,
              shape: Border(),
              title: Row(
                children: [
                  Text('Introduction',
                      style: TextStyle(
                        fontSize: 16,
                      )
                  ),
                  SizedBox(width: 20),
                  Text('1 Lectures .02h:35min'),
                ],
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon( FontAwesomeIcons.youtube),
                        SizedBox(width: 15),
                        Text('Introduction'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('02:35'),
                        SizedBox(width: 15),
                        Icon(Icons.visibility_outlined)
                      ],
                    ),
                  ],
                )
              ],
              trailing: SizedBox(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4),bottomRight: Radius.circular(4)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepPurple,
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0, 0))
                ]),
            child: ExpansionTile(
              textColor: Colors.deepPurple,
              shape: Border(),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Electronic Datasheet',
                      style: TextStyle(
                        fontSize: 16,
                      )
                  ),
                  Text('4 Lectures .\n07h:03min'),
                ],
              ),
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon( FontAwesomeIcons.youtube),
                            SizedBox(width: 15),
                            Text('Electronic Datasheet'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('07:52'),
                            SizedBox(width: 15),
                            Icon(Icons.visibility_outlined)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.question_mark),
                            SizedBox(width: 15),
                            Text('JavaScript syntax'),
                          ],
                        ),
                        Icon(Icons.visibility_outlined),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.question_mark),
                            SizedBox(width: 15),
                            Text('CSS Quiz'),
                          ],
                        ),
                        Icon(Icons.visibility_outlined),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.question_mark),
                            SizedBox(width: 15),
                            Text('HTML Quiz'),
                          ],
                        ),
                        Icon(Icons.visibility_outlined),
                      ],
                    ),
                  ],
                )
              ],
              trailing: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
