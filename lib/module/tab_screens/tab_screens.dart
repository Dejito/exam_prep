import 'package:exam_prep/module/dashboard/dashboard.dart';
import 'package:exam_prep/module/exam_practise/practice_screen.dart';
import 'package:exam_prep/module/tab_screens/tab_screens_widget.dart';
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';
import '../widgets/custom_text_widget.dart';

class TabScreens extends StatefulWidget {
  static const route = '/tab_screen';
  const TabScreens({super.key});

  @override
  State<TabScreens> createState() => _TabScreensState();
}

class _TabScreensState extends State<TabScreens> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          selectedIndex == 0 ? const Color(0xFF79F3A1) : Colors.black,
      appBar: AppBar(
        backgroundColor:
            selectedIndex == 0 ? const Color(0xFF79F3A1) : Colors.black,
        title: titleText(
          text: selectedIndex == 0 ? "Hello,\nAlexandra!" : "Practice",
          fontSize: selectedIndex == 0 ? 16 : 24,
          color: selectedIndex == 0 ? Colors.black87 : Colors.grey,
          startPadding: 12,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                const Positioned(
                  left: 8,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage(AppImages.userImage),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: selectedIndex == 0
                        ? const Color(0xFF79F3A1)
                        : Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: selectedIndex == 0
                        ? Colors.white
                        : Colors.grey.shade800,
                    radius: 24,
                    child: IconButton(
                      icon: Icon(
                        Icons.apps,
                        color: selectedIndex == 0 ? Colors.black : Colors.white,
                      ),
                      onPressed: null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 20,
          )
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.transparent,
        child: SizedBox(height: 0),
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomNavButton(
              heroTag: 'button1',
              backgroundColor:
                  selectedIndex == 0 ? Colors.black : Colors.grey.shade800,
              icon: Icons.home_outlined,
              text: selectedIndex == 0 ? "Home" : "",
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            bottomNavButton(
              heroTag: 'button2',
              backgroundColor:
                  selectedIndex == 0 ? Colors.black : Colors.grey.shade800,
              icon: Icons.school_outlined,
              text: "",
              onPressed: () {},
            ),
            bottomNavButton(
              heroTag: 'button3',
              backgroundColor:
                  selectedIndex == 0 ? Colors.black : Colors.grey.shade800,
              icon: Icons.article_outlined,
              text: selectedIndex == 2 ? "Practice" : "",
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: selectedIndex == 0 ? const Dashboard() : const PracticeScreen(),
    );
  }
}
