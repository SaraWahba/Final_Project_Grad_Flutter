import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.heigth, required this.endIndent, required this.indent, required this.thickness});
  final double heigth ;
  final double endIndent ;
  final double indent ;
  final double thickness ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Divider(height: heigth , endIndent: endIndent , indent: indent , thickness: thickness,color: Colors.grey),
    );
  }
}
