import 'package:flutter/material.dart';

import '../widgets/custom_text_widget.dart';


Widget bottomNavButton(
    {required String heroTag,
      required Color backgroundColor,
      required IconData icon,
      required String text,
      required Function() onPressed}) {
  return FloatingActionButton.extended(
    heroTag: heroTag,
    onPressed: onPressed,
    backgroundColor: backgroundColor,
    icon:  Icon(icon, color: Colors.white),
    label: titleText(
      text: text,
      color: Colors.white,
    ),
  );
}