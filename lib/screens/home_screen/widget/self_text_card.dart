import 'package:flutter/material.dart';

// class SelfTextListView extends StatefulWidget {
//   final List<String> listItem;
//
//   const SelfTextListView({
//     super.key,
//     required this.listItem,
//   });
//
//   @override
//   State<SelfTextListView> createState() => _SelfTextListViewState();
// }
//
// class _SelfTextListViewState extends State<SelfTextListView> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: widget.listItem.length,
//         itemBuilder: (context, index) {
//           return self_test_card(widget: widget);
//         });
//   }
// }

class SelfTestCard extends StatelessWidget {
  final String text;
  const SelfTestCard({
    super.key,
     required this.text,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        textAlign: TextAlign.start,
      ),
    );
  }
}
