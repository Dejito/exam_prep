import 'package:exam_prep/models/practice_grid_model.dart';
import 'package:exam_prep/module/widgets.dart';
import 'package:flutter/material.dart';

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
      color: Colors.grey,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
        ),
        const SizedBox(
          height: 18.0,
        ),
        titleText(text: label),
      ],
    ),
  );
}
