import 'package:exam_prep/models/question_answers_model.dart';
import 'package:exam_prep/module/random_questions_attempt/random_question.dart';
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
          itemBuilder: (context, i) {
            return Column(
              children: [
                titleText(
                    text: questionsAndAnswersRepo[i].question,
                    bottomPadding: 12),
                questionItemCard(
                    radioButtonValue: questionsAndAnswersRepo[i].options[i],
                    optionText: questionsAndAnswersRepo[i].options[i]),
              ],
            );
          },
          itemCount: questionsAndAnswersRepo.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        )
      ],
    ),
  );
}

Widget questionItemCard(
    {required String radioButtonValue,
    groupValue,
    required String optionText}) {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Radio<String>(
              focusColor: Colors.black,
              activeColor: Colors.black,
              value: radioButtonValue,
              groupValue: groupValue,
              onChanged: (selectedOption) {
                groupValue = selectedOption;
              },
            ),
            titleText(text: optionText),
          ],
        ),
        Container(
          height: 5,
          color: Colors.transparent,
        ),
      ],
    ),
  );
}
