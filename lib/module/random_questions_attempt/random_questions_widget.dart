import 'package:exam_prep/models/question_answers_model.dart';
import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import '../widgets/custom_text_widget.dart';

Widget randomQuestionsHeader(
    {required String subject, required int questionNumber}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleText(
          text: subject,
          fontSize: 26,
          color: Colors.greenAccent,
        ),
        titleText(
          text: '#$questionNumber',
          fontSize: 26,
          color: Colors.greenAccent,
        ),
      ],
    ),
  );
}

Widget questionsAndOptionsListView() {
  return Column(
    children: [
      ListView.builder(
        itemCount: questionsAndAnswersRepo.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
                child: titleText(
                  text: questionsAndAnswersRepo[i].question,
                  color: Colors.grey.shade300,
                  fontSize: 18,
                  textAlign: TextAlign.start,
                  bottomPadding: 16,
                ),
              ),
              questionItemCard(
                groupValue: "",
                options: questionsAndAnswersRepo[i].options,
                onChanged: (value) {
                },
              ),
            ],
          );
        },
      )
    ],
  );
}

Widget questionItemCard({
  required String? groupValue,
  required List<dynamic> options,
  required Function(String?) onChanged,
}) {
  return Column(
    children: options.map((option) {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.customGrey,
            ),
            child: Row(
              children: [
                Radio<String>(
                  value: option,
                  groupValue: groupValue,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
                Expanded(
                  child: titleText(
                    text: option,
                    fontSize: 15,
                    color: Colors.grey.shade500,
                    textAlign: TextAlign.start
                  ),
                ),
              ],
            ),
          ),
          Container(color: Colors.transparent,height: 5,)
        ],
      );
    }).toList(),
  );
}


Widget randomQuestionBottomButton() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: Colors.cyan,
    ),
    child: titleText(
      text: "Check The Answer",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
      textAlign: TextAlign.center,
    ),
  );
}