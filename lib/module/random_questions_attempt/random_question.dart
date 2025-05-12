import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

class RandomQuestion extends StatelessWidget {
  static const route = 'random_question';

  const RandomQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                  decoration: BoxDecoration(
                    color: Colors.black, // Border color
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    radius: 24,
                    child: IconButton(
                      icon: Icon(
                        Icons.apps,
                        color:Colors.white,
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

    );
  }
}
