import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';

Widget randomQuestionsHeader({required String subject, required int questionNumber}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      titleText(text: subject,
        color: Colors.greenAccent,
      ),
      titleText(text: '#$questionNumber',
        color: Colors.greenAccent,
      ),
    ],
  );
}