import 'package:flutter/material.dart';

class DateScheduleItem extends StatelessWidget {
  const DateScheduleItem(
      {super.key,
      this.isDisable = false,
      this.isSelected = false,
      this.onTap,
      required this.date});

  final bool isDisable;

  final bool isSelected;
  final String date;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable ? null : onTap,
      child: Container(
        width: 60,
        margin: const EdgeInsets.all(12),

        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(30),
            color: isDisable
                ? Colors.grey
                : isSelected
                ? Colors.blue
                : Colors.white,
        ),

        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              date,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? Colors.white : Colors.black38),
            ),
            const SizedBox(
              height: 12,
            ),

          ],
        ),
      ),
    );
  }
}
