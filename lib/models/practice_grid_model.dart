
import 'package:flutter/material.dart';

class PracticeGridModel {
  final int id;
  final IconData iconData;
  final String label;

  const PracticeGridModel(this.id, this.iconData, this.label);
}

const List<PracticeGridModel> practiceGridModelItems = [
  PracticeGridModel(1, Icons.shuffle, "Random"),
  PracticeGridModel(2, Icons.tag, "Exam Number"),
  PracticeGridModel(3, Icons.track_changes, "Topic"),
  PracticeGridModel(4, Icons.list, "In a Row"),
];

