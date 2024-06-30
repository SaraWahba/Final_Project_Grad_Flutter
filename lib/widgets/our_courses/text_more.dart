import 'package:flutter/material.dart';
class TextMore extends StatefulWidget {
  const TextMore({super.key});

  @override
  State<TextMore> createState() => _TextMoreState();
}

class _TextMoreState extends State<TextMore> {
  bool isReadMore = false ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('About Course',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black
            ),
            ),
          ),
          SizedBox(height: 24),
          buildText('Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc.\n\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.'),
          SizedBox(height: 24),
          InkWell(
            onTap: (){
             setState(() {
               isReadMore =!isReadMore ;
             });
            },
            child: Align(
              alignment: AlignmentDirectional.centerStart,
                child: Text((isReadMore ? '-  Show Less' : '+  Show More' ),
                  style: TextStyle(
                    color: Color(0xFF553CDF),
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                )
            )
          ),
        ],
      ),
    );
  }



  Widget buildText(String text){
    final lines = isReadMore ? null : 4;
    return Text(text,
      style: TextStyle(
        fontSize: 20,
        color: Color(0xFF9493A4)
      ),
      maxLines: lines,
    );
  }
}
