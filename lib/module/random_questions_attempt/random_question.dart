import 'package:exam_prep/module/random_questions_attempt/random_questions_widget.dart';
import 'package:exam_prep/module/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

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
          margin:  const EdgeInsets.only(left: 6),// Border width
          decoration: const BoxDecoration(
            color: Colors.black, // Border color
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
                // Handle press
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
                  padding: const EdgeInsets.all(2), // Border width
                  decoration: const BoxDecoration(
                    color: Colors.black, // Border color
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    radius: 24,
                    child:  Icon(
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
      body: Column(
        children: [
          randomQuestionsHeader(subject: 'Economics', questionNumber: 6),
          questionsAndOptionsListView()
        ],
      ),
    );
  }
}
