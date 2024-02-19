import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';

class quickAccessPart extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final String imagePath;

  const quickAccessPart({
    super.key,
    required this.text,
    required this.imagePath, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 59,
            width: 59,
            decoration: BoxDecoration(
                color: Utils.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(imagePath),
          ),
        ),
        Text(text)
      ],
    );
  }
}
