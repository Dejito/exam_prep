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

        title: const Text(
            "Hello,\nAlexandra!"
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
                    backgroundImage: AssetImage(AppImages.userImage), // Or use NetworkImage
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
          Container(width: 20,)
        ],
      ),
    );
  }
}