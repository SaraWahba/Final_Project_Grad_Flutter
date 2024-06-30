import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OurCoursesContainer extends StatelessWidget {
  const OurCoursesContainer({super.key, required this.image, required this.text, required this.numberLessons, required this.numberStudent, required this.textDescription, required this.namePerson, required this.rate, required this.price, required this.numberStart, this.onTap});
  final String image ;
  final String text ;
  final String numberLessons ;
  final String numberStudent ;
  final String textDescription ;
  final String namePerson ;
  final double rate ;
  final String price ;
  final String numberStart ;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
        margin: EdgeInsets.symmetric(horizontal: 14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: Offset(0, 5))
            ]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(image),
                width: 330,
                height: 165,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 18),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                padding: EdgeInsets.all(4.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFEEEBFF),
                ),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.book_outlined, color: Colors.grey, size: 23),
                    SizedBox(width: 11),
                    Text(
                      '$numberLessons Lessons',
                      style: TextStyle(fontSize: 21, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(width: 24),
                Row(
                  children: [
                    Icon(Icons.group, color: Colors.grey, size: 23),
                    SizedBox(width: 11),
                    Text(
                      '$numberStudent Student',
                      style: TextStyle(fontSize: 21, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 18),
            Text(textDescription,
            style:TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 18),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: InkWell(
                child: Text(namePerson,
                  textAlign: TextAlign.start,
                  style:TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: rate,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 24.0,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: 8),
                    Text(
                        numberStart,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                Text(price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
