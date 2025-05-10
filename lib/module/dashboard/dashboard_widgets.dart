import 'package:flutter/material.dart';
import '../widgets.dart';

//
// import 'package:flutter/cupertino.dart';
//
// Widget actionCard() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: <Widget>[
//       Expanded(
//         child: actionCardItem(
//             text: "Trade \nGift Card",
//             icon: AppIcons.tradeGiftCard,
//             onTap: () {
//               NavHelper.navToRedeemGiftCard();
//             }),
//       ),
//       const SizedBox(width: 16.0),
//       Expanded(
//         child: actionCardItem(
//             text: "Check Active \nRates",
//             icon: AppIcons.checkActiveRates,
//             onTap: () {}),
//       ),
//     ],
//   );
// }



Widget subjectOfferedWidget({required String subject}) {
  return Column(
    children: [
      titleText(
          text: subject,
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
  )
}