import 'package:exam_prep/module/dashboard/dashboard.dart';
import 'package:exam_prep/module/exam_practise/practice.dart';
import 'package:exam_prep/module/widgets.dart';
import 'package:flutter/material.dart';

import '../constant/app_assets.dart';

class TabScreens extends StatefulWidget {
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
              text: "Hello,\nAlexandra!",
              fontSize: 16,
              startPadding: 12,
              fontWeight: FontWeight.w500),
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
                      backgroundImage: AssetImage(
                          AppImages.userImage), // Or use NetworkImage
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2), // Border width
                    decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? const Color(0xFF79F3A1)
                          : Colors.black, // Border color
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: selectedIndex == 0
                          ? Colors.black
                          : Colors.grey.shade800,
                      radius: 24,
                      child: IconButton(
                        icon: Icon(
                          Icons.apps,
                          color:
                              selectedIndex == 0 ? Colors.black : Colors.white,
                        ),
                        onPressed: () {
                          // Handle press
                        },
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
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: SizedBox(height: 0),
        ),
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton.extended(
                heroTag: 'button1',
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                backgroundColor:
                    selectedIndex == 0 ? Colors.black : Colors.grey.shade800,
                icon: const Icon(Icons.home_outlined, color: Colors.white),
                label: titleText(
                    text: selectedIndex == 0 ? "Home" : "",
                    color: Colors.white),
              ),
              FloatingActionButton.extended(
                heroTag: 'button2',
                onPressed: () {
                  setState(() {
                    // selectedIndex = 1;
                  });
                },
                backgroundColor:
                    selectedIndex == 0 ? Colors.black : Colors.grey.shade800,
                icon: const Icon(Icons.school_outlined, color: Colors.white),
                label: titleText(text: "", color: Colors.white),
              ),
              FloatingActionButton.extended(
                heroTag: 'button2',
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                backgroundColor:
                    selectedIndex == 0 ? Colors.black : Colors.grey.shade800,
                icon: const Icon(Icons.article_outlined, color: Colors.white),
                label: titleText(
                    text: selectedIndex == 2 ? "Practice" : "",
                    color: Colors.white),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: selectedIndex == 0 ? const Dashboard() : const Practice());
  }
}

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
