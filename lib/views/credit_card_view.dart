import 'package:final_project_grad_flutter/widgets/credit_card/credit_card.dart';
import 'package:final_project_grad_flutter/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({super.key});
  static String id = "CreditCardView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreditCardPage(),
    );
  }
}
