import 'package:flutter/material.dart';



Widget richText({
  required String unformattedText,
  required String formattedText,
  Color? unformattedColor = Colors.black,
  required Color? formattedColor,
  double formattedFontSize = 14.0,
  double unformattedFontSize = 14.0,
  FontWeight fontWeight = FontWeight.normal
  }) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: unformattedText,
      style: TextStyle(
        color: unformattedColor,
        fontSize: unformattedFontSize,
        fontWeight: fontWeight
      ),
      children: [
        TextSpan(
          text: formattedText,
          style: TextStyle(
            fontSize: formattedFontSize,
            color: formattedColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );

}