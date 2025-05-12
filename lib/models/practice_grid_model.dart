
import 'package:flutter/material.dart';

class PracticeGridModel {
  final String id;
  final IconData iconData;
  final String label;

  const PracticeGridModel(this.id, this.iconData, this.label);
}

const List<PracticeGridModel> practiceGridModelItems = [
  PracticeGridModel("1", Icons.recycling, "Random"),
  PracticeGridModel("2", Icons.handshake_sharp, "Random"),
  PracticeGridModel("3", Icons.recycling, "Random"),
  PracticeGridModel("4", Icons.list, "Random"),
];

