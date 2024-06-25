import 'package:final_project_grad_flutter/widgets/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackContainer extends StatelessWidget {
  const FeedbackContainer({super.key, required this.numberReviews, required this.text, required this.name, required this.work, required this.imagePath, required this.rate});

  final double rate;
  final String numberReviews;
  final String text;
  final String name;
  final String work;
  final String imagePath;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(0, 5))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
             Row(
               children: [
                 RatingBar.builder(
                  initialRating: rate,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 26.0,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                             ),
                     Text(
                       ' ($numberReviews Reviews)',
                       style: TextStyle(
                         fontSize: 15,
                       ),
                     )
               ],
             ),
            SizedBox(height: 16),
            Text(text,
                 style: TextStyle(
                   fontSize: 17
                 ),
            ),
            SizedBox(height: 18),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
             title: Text(name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
             ),
             subtitle: Text(work,
               style: TextStyle(
                   fontSize: 16,
                 color: Colors.grey
               ),
             ),
            ),
          ],
        ),
      ),
    );
  }
}
