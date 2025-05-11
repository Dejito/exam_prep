import 'package:exam_prep/module/widgets/custom_button.dart';
import 'package:exam_prep/module/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import '../widgets.dart';

Widget subjectOfferedWidget({required String subject}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titleText(text: subject, fontSize: 40, fontWeight: FontWeight.bold),
      titleText(
          text: "Exam Preparation",
          fontSize: 40,
          color: Colors.black54,
          fontWeight: FontWeight.bold),
    ],
  );
}

Widget scoreBoard({required int score}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            richText(
              unformattedText: score.toString(),
              formattedText: " /100",
              formattedColor: Colors.black54,
              fontWeight: FontWeight.w700,
              formattedFontSize: 28,
              unformattedFontSize: 35
            ),
            titleText(
              text: "Your recent score",
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )
          ],
        ),
      ),
      const SizedBox(width: 16.0),
      Expanded(
        child: customButton(
          text: "More Details",
          textColor: Colors.white,
          buttonColor: Colors.black,
          onClick: (){},
        ),
      ),
    ],
  );
}


Widget subjectOverviewCardItem({
  required String formattedColorText,
  required String unformattedColorText,
  required IconData icon,
  required double size,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    splashColor: Colors.grey,
    child: Container(
      height: 140,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: const Color(0xFFFFD739), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size,
          ),
          const SizedBox(height: 12.0),
          richText(
              unformattedText: unformattedColorText,
              formattedText: formattedColorText,
              formattedColor: Colors.black54,
              fontWeight: FontWeight.w700,
              formattedFontSize: 28,
              unformattedFontSize: 35
          ),
        ],
      ),
    ),
  );
}