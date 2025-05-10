import 'dart:ffi';
import 'dart:ui';

import 'package:blackchinx/core/router/navigation_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



Widget richText({
  required String unformattedText,
  required String formattedText,
  String unformattedText2 = "",
  Color? unformattedColor = Colors.black,
  required Color? formattedColor,
  double formattedFontSize = 14.0,
  double unformattedFontSize = 14,
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
          // recognizer: TapGestureRecognizer()
          //   ..onTap = () {
          //   },
        ),
        TextSpan(
          text: unformattedText2,
          style: TextStyle(color: unformattedColor,
              fontSize: unformattedFontSize.sp,
          ),
        ),
        // TextSpan(
        //   text: 'Privacy Policies',
        //   style: GoogleFonts.poppins(
        //     fontSize: 12.sp,
        //     color: const Color(0xFF2957C5),
        //     fontWeight: FontWeight.bold,
        //   ),
        //   recognizer: TapGestureRecognizer()
        //     ..onTap = () {
        //       debugPrint('Privacy Policies tapped');
        //     },
        // ),
      ],
    ),
  );

}