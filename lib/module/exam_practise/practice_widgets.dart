import 'package:exam_prep/module/widgets.dart';
import 'package:flutter/material.dart';

Widget practiceGridView() {
  return GridView(
    children: [

    ],
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
    ),
  );
}

Widget practiceGridCard({
  required String label,
  required IconData icon,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    splashColor: Colors.grey,
    child: Container(
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
    ),
  );
}
