import 'package:exam_prep/module/dashboard/dashboard_widgets.dart';
import 'package:exam_prep/module/exam_practise/practice_widgets.dart';
import 'package:exam_prep/module/random_questions_attempt/random_question.dart';
import 'package:flutter/material.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subjectOfferedWidget(
                  topText: "Challenge your knowledge",
                  bottomText: "type of question",
                  topTextColor: Colors.white,
                  bottomTextColor: Colors.grey,
                  bottomFontSize: 30,
                  isDashboardScreen: false),
              practiceGridView(onClicked: () {
                Navigator.of(context).pushNamed(RandomQuestion.route);
              }),
              mistakesPracticeCard()
            ],
          ),
        ),
      ),
    );
  }
}
