import 'package:flutter/material.dart';



buildShowModalBottomSheet({
  required BuildContext context,
  required String textButton1,
  required String textButton2,
  required Function() onTapButton1,
  required Function() onTapButton2,
}) {
  return showModalBottomSheet(
    context: context,
    barrierColor: Colors.black38,
    backgroundColor: Colors.white.withOpacity(.01),
    enableDrag: false,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    isDismissible: false,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onTapButton1,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Color(0xFFDEDEDE),
              ),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                textButton1,
                style: const TextStyle(fontSize: 18, color: Color(0xFF36358B)),
              ),
            ),
          ),
          Divider(
              color: Colors.grey.withOpacity(.7),
              height: 1,
              thickness: 1.5),
          GestureDetector(
            onTap: onTapButton2,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                color:Color(0xFFDEDEDE),
              ),
              alignment: Alignment.center,
              child: Text(
                textButton2,
                style: const TextStyle(fontSize: 18, color: Color(0xFF36358B)),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color:const Color(0xFFDEDEDE),
              ),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: const Text(
               "cancel",
                style: TextStyle(fontSize: 18, color: Color(0xFF36358B)),
              ),
            ),
          ),
        ],
      );
    },
  );
}
