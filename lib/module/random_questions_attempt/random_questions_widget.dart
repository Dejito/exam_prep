import 'package:exam_prep/module/random_questions_attempt/random_question.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';

Widget randomQuestionsHeader({required String subject, required int questionNumber}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleText(text: subject,
          fontSize: 28,
          color: Colors.greenAccent,
        ),
        titleText(text: '#$questionNumber',
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
        titleText(text: "Select the correct judgment about the global economy from the list below.",
        bottomPadding: 12
        )
      ],
    ),
  )
}

Widget questionItemCard(
    {required String radioButtonValue, groupValue, required String optionText}) {
  return Container(
    child:   Column(
      children: [
        Row(
          children: [
            Radio<String>(
              focusColor: Colors.black,
              activeColor: Colors.black,
              value: radioButtonValue,
              groupValue: groupValue,
              onChanged: (selectedOption){
                groupValue = selectedOption;
              },
            ),
            titleText(text: 'Ecode'),
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