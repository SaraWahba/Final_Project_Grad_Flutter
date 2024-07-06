import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';


void showMotionToastMessage(BuildContext context, String message) {
  MotionToast(
    description: Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        message,
        style: TextStyle(color: Color(0xFF36358B)),
      ),
    )),
    animationDuration: const Duration(milliseconds: 800),
    toastDuration: const Duration(seconds: 3),
    displaySideBar: false,
    // width: MediaQuery.of(context).size.width * .75,
    animationType: AnimationType.fromTop,
    position: MotionToastPosition.top,
    // height: 50,
    margin: const EdgeInsets.symmetric(horizontal: 25),
    // animationCurve: Curves.easeInToLinear,
    barrierColor: Colors.black38, primaryColor: const Color(0xFFDEDEDE),
  ).show(context);
}
