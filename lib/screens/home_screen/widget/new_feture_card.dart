import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/utils.dart';

class NewFeaturesCard extends StatelessWidget {
  final Color backGroundColor;
  final String text;
  final String image;
  const NewFeaturesCard({
    super.key, required this.image, required this.text, required this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backGroundColor,

      // margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            // Icon(Icons.cable),
            Image.asset(image),
            const SizedBox(
              height: 8,
            ),
            Text(text,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 5,
            ),
            const Text("Lorem Ipsum is simply \n& dummy text of the...")
          ],
        ),
      ),
    );
  }
}
