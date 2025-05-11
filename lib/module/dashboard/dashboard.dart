import 'package:exam_prep/module/dashboard/dashboard_widgets.dart';
import 'package:exam_prep/module/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  // int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF79F3A1),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF79F3A1),
      //   title: titleText(
      //       text: "Hello,\nAlexandra!",
      //       fontSize: 16,
      //       startPadding: 12,
      //       fontWeight: FontWeight.w500),
      //   actions: [
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * 0.25,
      //       child: Stack(
      //         alignment: Alignment.centerRight,
      //         children: [
      //           const Positioned(
      //             left: 8,
      //             child: CircleAvatar(
      //               radius: 25,
      //               backgroundImage:
      //                   AssetImage(AppImages.userImage), // Or use NetworkImage
      //             ),
      //           ),
      //           Container(
      //             padding: const EdgeInsets.all(2), // Border width
      //             decoration: const BoxDecoration(
      //               color: Color(0xFF79F3A1), // Border color
      //               shape: BoxShape.circle,
      //             ),
      //             child: CircleAvatar(
      //               backgroundColor: Colors.white,
      //               radius: 24,
      //               child: IconButton(
      //                 icon: const Icon(Icons.apps),
      //                 onPressed: () {
      //                   // Handle press
      //                 },
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       width: 20,
      //     )
      //   ],
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.transparent,
      //   child: SizedBox(height: 0),
      // ),
      // floatingActionButton: SizedBox(
      //   width: MediaQuery.of(context).size.width * 0.65,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       FloatingActionButton.extended(
      //         heroTag: 'button1',
      //         onPressed: () {
      //           setState(() {
      //             selectedIndex = 0;
      //           });
      //         },
      //         backgroundColor: Colors.black,
      //         icon: const Icon(Icons.home_outlined, color: Colors.white),
      //         label: titleText(text: selectedIndex == 0 ? "Home" : "", color: Colors.white),
      //       ),
      //       FloatingActionButton.extended(
      //         heroTag: 'button2',
      //         onPressed: () {
      //           setState(() {
      //             // selectedIndex = 1;
      //           });
      //         },
      //         backgroundColor: Colors.black,
      //         icon: const Icon(Icons.school_outlined, color: Colors.white),
      //         label: titleText(text: "", color: Colors.white),
      //       ),
      //       FloatingActionButton.extended(
      //         heroTag: 'button2',
      //         onPressed: () {
      //           setState(() {
      //             selectedIndex = 2;
      //           });
      //         },
      //         backgroundColor: Colors.black,
      //         icon: const Icon(Icons.article_outlined, color: Colors.white),
      //         label: titleText(text: selectedIndex == 2 ? "Practice" : "", color: Colors.white),
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
