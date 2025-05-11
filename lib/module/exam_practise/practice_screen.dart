import 'package:exam_prep/module/dashboard/dashboard_widgets.dart';
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';
import '../widgets.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subjectOfferedWidget(
                subject: "Challenge your knowledge",
                topTextColor: Colors.white,
                isDashboardScreen: false
              )
            ],
          ),
        ),
      ),
    );
  }
}
