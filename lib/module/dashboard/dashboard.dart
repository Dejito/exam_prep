import 'package:exam_prep/module/widgets.dart';
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF79F3A1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF79F3A1),
        title: titleText(
          text: "Hello,\nAlexandra!",
          fontSize: 16,
          fontWeight: FontWeight.w500
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
                        AssetImage(AppImages.userImage), // Or use NetworkImage
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2), // Border width
                  decoration: const BoxDecoration(
                    color: Color(0xFF79F3A1), // Border color
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: IconButton(
                      icon: const Icon(Icons.apps),
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
      floatingActionButton: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              // First action
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () {
              // Second action
            },
            child: const Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(
                text: "Social Studies",
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
              titleText(
                  text: "Exam Preparation",
                  fontSize: 40,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
              ),

            ],
          ),
        ),
      ),
    );
  }
}
