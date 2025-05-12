import 'package:exam_prep/models/practice_grid_model.dart';
import 'package:exam_prep/module/widgets.dart';
import 'package:flutter/material.dart';

Widget mistakesPracticeCard() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      color: Colors.cyan,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText(
          text: "Mistakes practice",
          fontSize: 22,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.start,
          bottomPadding: 12
        ),
        titleText(
          text:
              "Practice more the very exam exercises which you're doing worse. You're gonna deal with it",
          fontWeight: FontWeight.w500,
          color: Colors.black54,
          endPadding: 20
        )
      ],
    ),
  );
}

Widget practiceGridView() {
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
      return practiceGridCard(
        label: item.label,
        icon: item.iconData,
      );
    }).toList(),
  );
}

Widget practiceGridCard({
  required String label,
  required IconData icon,
}) {
  return Container(
    height: 160,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.grey.shade700,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.greenAccent,
        ),
        const SizedBox(
          height: 18.0,
        ),
        titleText(
            text: label, color: Colors.white, fontWeight: FontWeight.w600),
      ],
    ),
  );
}
