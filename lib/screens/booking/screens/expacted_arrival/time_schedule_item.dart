import 'package:flutter/material.dart';

class TimeScheduleItem extends StatelessWidget {
  const TimeScheduleItem({
    super.key,
    this.isDisable=false,
    this.isSelected=false,
    required this.time,
    this.onTap,
  });

  final bool isDisable;
  final bool isSelected;
  final String time;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      onTap: isDisable?null:onTap,
      child: Chip(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        shape: const StadiumBorder(
          side: BorderSide(
            color: Colors.black12,
          ),
        ),
        backgroundColor: isDisable
            ? Colors.grey
            : isSelected
                ? Colors.blue
                : Colors.white,
        label: Text(
          "8.30",
          style: TextStyle(
            fontSize: 18,
            color: isSelected ? Colors.white : null,
          ),
        ),
        surfaceTintColor: Colors.greenAccent,
      ),
    );
    ;
  }
}
