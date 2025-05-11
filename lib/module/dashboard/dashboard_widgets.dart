import 'package:exam_prep/module/widgets/custom_button.dart';
import 'package:exam_prep/module/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import '../widgets.dart';

Widget subjectOfferedWidget({required String subject}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText(text: subject, fontSize: 40, fontWeight: FontWeight.bold),
        titleText(
            text: "Exam Preparation",
            fontSize: 40,
            color: Colors.black54,
            fontWeight: FontWeight.bold),
      ],
    ),
  );
}

Widget scoreBoard({required int score}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
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
                  unformattedFontSize: 35),
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
            onClick: () {},
          ),
        ),
      ],
    ),
  );
}

Widget subjectOverviewCard() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Expanded(
        child: subjectOverviewCardItem(
          formattedColorText: " /5 topics",
          unformattedColorText: "3",
          icon: Icons.school_outlined,
          // size: size,
          onTap: () {},
        ),
      ),
      const SizedBox(width: 16.0),
      Expanded(
        child: subjectOverviewCardItem(
          formattedColorText: " /16 questions",
          unformattedColorText: "8",
          icon: Icons.article_outlined,
          // size: size,
          onTap: () {},
        ),
      ),
    ],
  );
}

Widget subjectOverviewCardItem({
  required String formattedColorText,
  required String unformattedColorText,
  required IconData icon,
  double size = 30,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    splashColor: Colors.grey,
    child: Container(
      height: 160,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        // border: Border.all(color: const Color(0xFFFFD739), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size,
          ),
          const SizedBox(
            height: 18.0,
          ),
          richText(
            unformattedText: unformattedColorText,
            formattedText: formattedColorText,
            formattedColor: Colors.black54,
            fontWeight: FontWeight.w700,
            formattedFontSize: 16,
            unformattedFontSize: 30,
          ),
        ],
      ),
    ),
  );
}

Widget testSummaryCard() {
  return Container(
    height: 160,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      // border: Border.all(color: const Color(0xFFFFD739), width: 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [],
    ),
  );
}
