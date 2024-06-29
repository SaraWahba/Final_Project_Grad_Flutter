import 'package:flutter/material.dart';
class CustomIConImage extends StatelessWidget {
  const CustomIConImage({super.key, required this.iconImage, this.onTap});
  final String iconImage ;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black , width: 1),
        ),
        child: Image(image: AssetImage(iconImage),
        ),
      ),
    );
  }
}
