import 'package:exam_prep/constant/app_colors.dart';
import 'package:exam_prep/module/random_questions_attempt/random_questions_widget.dart';
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';
import '../tab_screens/tab_screens_widget.dart';

class RandomQuestion extends StatelessWidget {
  static const route = 'random_question';

  const RandomQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          margin:  const EdgeInsets.only(left: 6),
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
                color:Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),

        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                const Positioned(
                  left: 8,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage(AppImages.userImage),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    radius: 24,
                    child:  const Icon(
                        Icons.apps,
                        color:Colors.white,
                      ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 20,
          )
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.transparent,
        child: SizedBox(height: 0),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomNavButton(
              heroTag: 'button1',
              backgroundColor: AppColors.customGrey,
              icon: Icons.home_outlined,
              text: "",
              onPressed: () {},
            ),
            bottomNavButton(
              heroTag: 'button2',
              backgroundColor: AppColors.customGrey,
              icon: Icons.school_outlined,
              text: "",
              onPressed: () {},
            ),
            bottomNavButton(
              heroTag: 'button3',
              backgroundColor: AppColors.customGrey,
              icon: Icons.article_outlined,
              text: "Practice",
              onPressed: () {

              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            randomQuestionsHeader(subject: 'Economics', questionNumber: 6),
            questionsAndOptionsListView(),
            randomQuestionBottomButton()
          ],
        ),
      ),
    );
  }
}
