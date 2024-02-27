import 'package:flutter/material.dart';


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
