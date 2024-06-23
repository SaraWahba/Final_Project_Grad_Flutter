import 'package:flutter/material.dart';

void main() {
  runApp(const ThinkTank());
}

class ThinkTank extends StatelessWidget {
  const ThinkTank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}



