import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class Pricing extends StatelessWidget {
  const Pricing({super.key, required this.image, required this.title, required this.amount});
  final String image ;
  final String title ;
  final String amount ;

  @override
  Widget build(BuildContext context) {
    List<String> pricingCourses = [
      'Graphic Design',
      'Web Design',
      'UI/UX',
      'HTML/CSS',
      'SEO Marketing',
      'Business Analysis',
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
      margin: EdgeInsets.symmetric(horizontal: 14),
      width: 250,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFB390F2),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 3))
          ]),
        child: Column(
          children: [
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(image: AssetImage(image),
               height: 50),
            ),
            SizedBox(height: 10),
            Text(title,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 21
            ),
            ),
            SizedBox(height: 5),
            Text(amount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5),
            ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: pricingCourses.length,
                itemBuilder: (context, index){
                  return Text(pricingCourses[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                    ),
                  );
                }
            ),
            SizedBox(height: 12),
            CustomButton(
              color: Color(0xFF57309C),
              text: "Start Now",
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18
              ),
              height:50,
              width: 120,
            ),

          ],
        ),
    );
  }
}
