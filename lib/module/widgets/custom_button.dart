import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

Widget customButton({
  required String text,
  required Color textColor,
  required Color buttonColor,
  required Function() onClick,
}) {
  return InkWell(
    onTap: onClick,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        color: buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          titleText(
            text: text,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor,
            textAlign: TextAlign.justify,
          ),
          // SizedBox(
          //   width: 2,
          // ),
          const Icon(
            CupertinoIcons.arrow_up_right,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
    ),
  );
}
