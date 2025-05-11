import 'package:flutter/material.dart';

import '../widgets.dart';

class MiddleTab extends StatelessWidget {
  const MiddleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: titleText(text: "Middle tab"),
      ),
    );  }
}
