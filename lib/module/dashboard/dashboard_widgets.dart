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
          children: [
            richText(
              unformattedText: score.toString(),
              formattedText: " /100",
              formattedColor: Colors.black54,
              formattedFontSize: 30,
              unformattedFontSize: 30
            ),
            titleText(
              text: "Your recent score",
              color: Colors.black54,
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
