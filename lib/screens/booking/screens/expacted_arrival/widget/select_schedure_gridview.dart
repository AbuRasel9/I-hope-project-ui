//
// import 'package:flutter/material.dart';
//
// class SelectScheduleGridview extends StatelessWidget {
//   final List<Map<String, String>> listitem;
//
//
//   const SelectScheduleGridview({
//     super.key,
//     required this.listitem,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: 6,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             childAspectRatio: .7, crossAxisCount: 6, crossAxisSpacing: 5),
//         itemBuilder: (context, index) {
//           return Container(
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black26),
//                 borderRadius: BorderRadius.circular(30),
//                 color: index == 3 ? Colors.blue : Colors.white),
//             // height: 100,
//             // width: 50,
//             child: Column(
//               // crossAxisAlignment: CrossAxisAlignment.baseline,
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   listitem[index]['dayName'].toString(),
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                       color: index == 3 ? Colors.white : Colors.black38),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Text(listitem[index]['date'].toString(),
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700,
//                         color: index == 3 ? Colors.white : Colors.black)),
//               ],
//             ),
//           );
//         });
//   }
// }
