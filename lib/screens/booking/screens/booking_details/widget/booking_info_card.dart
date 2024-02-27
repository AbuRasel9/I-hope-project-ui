import 'package:flutter/material.dart';

class BookingInfoCard extends StatelessWidget {
  final Widget? seeMoreButton;
  final String imagePath;
  final String? imagePath2;
  final String titleText;
  final String text1;
  final String? text2;

  const BookingInfoCard({
    super.key,
    this.imagePath2,
    required this.imagePath,
    this.text2,
    required this.titleText,
    required this.text1,
    this.seeMoreButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titleText,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 8,
            ),
            Text(text1,
                style: const TextStyle(
                    fontSize: 17, color: Color.fromRGBO(128, 141, 158, 1))),
            const SizedBox(
              height: 8,
            ),
            text2 == null
                ? Image.asset(
              imagePath2!,
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            )
                : Text(
              text2!,
              style: const TextStyle(
                  fontSize: 17, color: Color.fromRGBO(128, 141, 158, 1)),
            ),
            const SizedBox(height: 15,),
            SizedBox(child: seeMoreButton)
          ],
        )
      ],
    );
  }
}
