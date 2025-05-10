import 'package:exam_prep/module/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import '../widgets.dart';

Widget subjectOfferedWidget({required String subject}) {
  return Column(
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
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(
        child: Column(
          children: [
            richText(
              unformattedText: score.toString(),
              formattedText: " /100",
              formattedColor: Colors.black54,
            ),
            titleText(
              text: "Your recent score",
              color: Colors.black54,
            )
          ],
        ),
      ),
      const SizedBox(width: 16.0),
      Expanded(ch),
    ],
  );
}

