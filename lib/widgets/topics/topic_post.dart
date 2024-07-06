import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class TopicsPostsContainer extends StatelessWidget {
  const TopicsPostsContainer({super.key, required this.image, required this.text, required this.person});
  final String image ;
  final String text ;
  final String person ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 14),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 3,
                offset: Offset(0, 2))
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Merriweather',
                  fontSize: 20,
                  color: Colors.black
                )),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Text(
                    'Post by : ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey
                    )),
                Text(
                     person,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey
                    )),
              ],
            ),
          ),
          SizedBox(height: 18),
          CustomButton(
            onTap: () {
              // Navigator.pushReplacementNamed(
              //     context, AboutUSView.id);
            },
            text: "Show",
            textStyle: const TextStyle(
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24),
                width: 130,
          ),
        ],
      ),
    );
  }
}
