import 'package:final_project_grad_flutter/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class RatingAndReviews extends StatelessWidget {
  const RatingAndReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30,top: 30,bottom: 14,right: 0),
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: AlignmentDirectional.center,
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
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Container(
              width: 170,
              padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
              margin: EdgeInsets.symmetric(horizontal: 8),
              alignment: AlignmentDirectional.center,
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
                  Text('4.00',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 16),
                  RatingBar.builder(
                    initialRating: 4,
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
                  SizedBox(height: 16),
                  Text('Total 1 Rating',
                    style: TextStyle(
                        fontSize: 20,
                    ),),
                ],
              ),
            ),
          ),
          SizedBox(height: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8),
              chartRow(context, '5', 89),
              chartRow(context, '4', 8),
              chartRow(context, '3', 2),
              chartRow(context, '4', 1),
              chartRow(context, '1', 0),
              SizedBox(height: 8),
            ],
          ),
          CustomDivider(heigth: 1, endIndent: 5, indent: 0, thickness: 1),
          Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image(
                image: AssetImage('assets/images/instructor2.png'),
                fit: BoxFit.fill,),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text('Mahmud Sujons',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              ),
            ),
            subtitle: RatingBar.builder(
              initialRating: 5,
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
            trailing: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('1 year ago',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
            ),
          SizedBox(height: 16,),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('Very good course',
              style: TextStyle(
                color: Color(0xFF646464),
                  fontSize: 16
              ),
            ),
          ),
        ],
      ),
          CustomDivider(heigth: 1, endIndent: 5, indent: 0, thickness: 1),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image(
                    image: AssetImage('assets/images/instructor1.jpg'),
                    fit: BoxFit.fill,),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('Jhon Sina',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
                subtitle: RatingBar.builder(
                  initialRating: 4,
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
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text('1 year ago',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text('Very Good',
                  style: TextStyle(
                      color: Color(0xFF646464),
                      fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Widget chartRow(BuildContext context, String label, int pct) {
    return Row(
      children: [
        Text(label, ),
        SizedBox(width: 8),
        Icon(Icons.star, color: Colors.orange),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
          child:
          Stack(
              children: [
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                      color:Colors.orange ,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(''),
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(''),
                ),
              ]

          ),
        ),
        Text('$pct%'),
      ],
    );
  }
}
