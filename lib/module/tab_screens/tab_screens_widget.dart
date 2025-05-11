import 'package:flutter/material.dart';

import '../widgets.dart';


Widget bottomNavButton(
    {required String heroTag,
      required Color backgroundColor,
      required Icon icon,
      required String text,
      required Color textColor,
      required Function() onPressed}) {
  return FloatingActionButton.extended(
    heroTag: heroTag,
    onPressed: onPressed,
    backgroundColor: backgroundColor,
    icon: const Icon(Icons.article_outlined, color: Colors.white),
    label: titleText(
      text: text,
      color: textColor,
    ),
  );
}