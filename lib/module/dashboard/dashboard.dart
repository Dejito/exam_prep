import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Hello,\nAlexandra!"
        ),
        actions: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              // Profile Image
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(AppImages.userImage), // Replace with your image
              ),

              // Overlapping Icon
              Positioned(
                right: -10,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.grid_view_rounded, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}