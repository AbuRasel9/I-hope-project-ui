import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/utils.dart';

class UploadTestCard extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text1;
  final String text2;
  final String imageUrl;

  const UploadTestCard({
    super.key,
    required this.imageUrl,
    required this.text1,
    required this.text2,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      // index == 0 ? Utils.primaryColor :

      margin: const EdgeInsets.only(
        top: 5,
        left: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: CircleAvatar(
                radius: 30,
                child: Image.asset(imageUrl),
                // Image.asset(widget.listItem[index]["imageUrl"],height: 80,width: 80,fit: BoxFit.cover,),),
              )),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "${text1} \n${text2}",
              style: Utils.HeadingTextStyle(
                color: textColor,
                // index == 0 ? Colors.white :
              ),
            ),
          ),
        ],
      ),
    );
  }
}
