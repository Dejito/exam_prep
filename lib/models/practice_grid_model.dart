
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PracticeGridModel {

  final IconData iconData;
  final String label;

  PracticeGridModel(this.iconData, this.label);
}

final List<PracticeGridModel> practiceGridModelItems = [
  PracticeGridModel(Icons.recycling, "Random"),
  PracticeGridModel(Icons.handshake_sharp, "Random"),
  PracticeGridModel(Icons.recycling, "Random"),
  PracticeGridModel(Icons.list, "Random"),

];