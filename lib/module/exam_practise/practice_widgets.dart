import 'package:exam_prep/models/practice_grid_model.dart';
import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import '../widgets/custom_text_widget.dart';

Widget mistakesPracticeCard() {
  return Container(
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      color: Colors.cyan,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText(
          text: "Mistakes practice",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.start,
          bottomPadding: 8
        ),
        titleText(
          text:
              "Practice more the very exam exercises which you're doing worse. You're gonna deal with it",
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
          textAlign: TextAlign.start,
          endPadding: 8
        )
      ],
    ),
  );
}

Widget practiceGridView({required Function() onClicked}) {
  return GridView(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
    ),
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    children: practiceGridModelItems.map((item) {
      return GestureDetector(
        onTap: item.id == 1 ? onClicked : null,
        child: practiceGridCard(
          label: item.label,
          icon: item.iconData,
          foregroundColor: item.id == 1 ? Colors.black : Colors.greenAccent,
          backgroundColor: item.id == 1 ? Colors.greenAccent : AppColors.customGrey, textColor: item.id == 1 ? Colors.black : Colors.white,
        ),
      );
    }).toList(),
  );
}

Widget practiceGridCard({
  required String label,
  required IconData icon,
  required Color foregroundColor,
  required Color backgroundColor,
  required Color textColor,

}) {
  return Container(
    height: 160,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: foregroundColor,
        ),
        const SizedBox(
          height: 18.0,
        ),
        titleText(
            text: label, color: textColor, fontWeight: FontWeight.w600),
      ],
    ),
  );
}
