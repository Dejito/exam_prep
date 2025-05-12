import 'package:exam_prep/module/widgets/custom_button.dart';
import 'package:exam_prep/module/widgets/rich_text.dart';
import 'package:flutter/material.dart';
import '../../models/subjects_model.dart';
import '../widgets/custom_text_widget.dart';

Widget subjectOfferedWidget({
  required String topText,
  String bottomText = "Exam Preparation",
  bool isDashboardScreen = true,
  Color topTextColor = Colors.black,
  double bottomFontSize = 32,
  Color bottomTextColor = Colors.black54,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    margin: const EdgeInsets.only(bottom: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText(
          text: topText,
          fontSize: 32,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
          color: topTextColor,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            titleText(
              text: bottomText,
              fontSize: bottomFontSize,
              color: bottomTextColor,
              fontWeight: FontWeight.bold,
            ),
            if (!isDashboardScreen)
              const Icon(
                Icons.keyboard_arrow_down,
                size: 30,
                color: Colors.grey,
              )
          ],
        ),
      ],
    ),
  );
}

Widget scoreBoard({required int score}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    margin: const EdgeInsets.only(bottom: 20),
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
                formattedFontSize: 26,
                unformattedFontSize: 35,
              ),
              titleText(
                text: "Your recent score",
                color: Colors.black54,
                fontSize: 16,
                textAlign: TextAlign.start,
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
      const SizedBox(width: 4.0),
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
      height: 140,
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
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Column(
      children: [
        subjectsListView(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Row(
              children: [
                richText(
                  unformattedText: '3',
                  formattedText: 'h',
                  unformattedFontSize: 30,
                  fontWeight: FontWeight.w500,
                  formattedColor: Colors.grey,
                ),
                richText(
                  unformattedText: '17',
                  formattedText: 'min',
                  unformattedFontSize: 30,
                  fontWeight: FontWeight.w500,
                  formattedColor: Colors.grey,
                ),
              ],
            ),
            titleText(text: "Overall Time Spent")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            richText(
              unformattedText: '6 ',
              formattedText: '/20h',
              unformattedFontSize: 30,
              fontWeight: FontWeight.w500,
              formattedColor: Colors.grey,
            ),
            titleText(text: "Variants Solved")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            titleText(text: "28", fontSize: 30, fontWeight: FontWeight.w500),
            titleText(text: "Mistakes made")
          ],
        ),
      ],
    ),
  );
}

Widget subjectsListView() {
  return SizedBox(
    height: 50,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: subject.length,
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: titleText(
                text: subject[i], fontSize: 15, color: Colors.grey.shade500),
          ),
        );
      },
    ),
  );
}
