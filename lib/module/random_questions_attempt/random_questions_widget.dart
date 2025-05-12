import 'package:exam_prep/models/question_answers_model.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';

Widget randomQuestionsHeader(
    {required String subject, required int questionNumber}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleText(
          text: subject,
          fontSize: 28,
          color: Colors.greenAccent,
        ),
        titleText(
          text: '#$questionNumber',
          fontSize: 28,
          color: Colors.greenAccent,
        ),
      ],
    ),
  );
}

Widget questionsAndOptionsListView() {
  return Container(
    child: Column(
      children: [
        ListView.builder(
          itemCount: questionsAndAnswersRepo.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleText(
                  text: questionsAndAnswersRepo[i].question,
                  color: Colors.white,
                  bottomPadding: 12,
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
    ),
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
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF232323),
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
                    color: Colors.white,
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

