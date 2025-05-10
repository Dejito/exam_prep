import 'package:flutter/material.dart';

import '../widgets.dart';


Widget customButton({
  required String text,
  required Color textColor,
  required Color buttonColor,
  required Function() onClick,
}) {
  return InkWell(
    onTap: onClick,
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        color: buttonColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: titleText(
            text: text,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: textColor,
            textAlign: TextAlign.justify),
      ),
    ),
  );
}