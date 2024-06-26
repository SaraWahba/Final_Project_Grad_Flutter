import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});
  final String image ;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      width: 320,
      height: 320,
     );
  }
}
