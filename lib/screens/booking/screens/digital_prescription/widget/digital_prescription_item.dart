import 'package:flutter/material.dart';

class DigitalPrescriptionItem extends StatelessWidget {
  const DigitalPrescriptionItem({super.key, required this.presCriptionItem});

  final String presCriptionItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.black12))),
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Text(
        presCriptionItem,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
