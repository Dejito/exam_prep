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