// import 'package:flutter/material.dart';
//
// class SelectScheduleCard extends StatelessWidget {
//   const SelectScheduleCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.black26),
//           borderRadius: BorderRadius.circular(30),
//           color: index == 3 ? Colors.blue : Colors.white),
//       // height: 100,
//       // width: 50,
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.baseline,
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             listitem[index]['dayName'].toString(),
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 color: index == 3 ? Colors.white : Colors.black38),
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Text(listitem[index]['date'].toString(),
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w700,
//                   color: index == 3 ? Colors.white : Colors.black)),
//         ],
//       ),
//     );
//   }
// }
