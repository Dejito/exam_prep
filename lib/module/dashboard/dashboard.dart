import 'package:exam_prep/module/dashboard/dashboard_widgets.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF79F3A1),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subjectOfferedWidget(subject: "Social Studies"),
              const SizedBox(height: 20),
              scoreBoard(score: 58),
              const SizedBox(height: 20),
              subjectOverviewCard(),
              const SizedBox(height: 15),
              testSummaryCard()
            ],
          ),
        ),
      ),
    );
  }
}
