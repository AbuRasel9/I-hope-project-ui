import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/text_style.dart';

class NewFetureCard extends StatelessWidget {
  final String text;
  final String image;
  const NewFetureCard({
    super.key, required this.image, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      // margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            // Icon(Icons.cable),
            Image.asset(image),
            SizedBox(
              height: 8,
            ),
            Text(text,style: TextStyle(color: Color.fromRGBO(17, 95, 110, 1),fontSize: 18),),
            SizedBox(
              height: 5,
            ),
            Text("Lorem Ipsum is simply \n& dummy text of the...")
          ],
        ),
      ),
    );
  }
}
