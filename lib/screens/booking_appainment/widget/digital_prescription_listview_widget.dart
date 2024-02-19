import 'package:flutter/material.dart';

class DigitalPrescriptionListview extends StatefulWidget {
  final List<String> listItem;
  const DigitalPrescriptionListview({
    super.key, required this.listItem,
  });

  @override
  State<DigitalPrescriptionListview> createState() => _DigitalPrescriptionListviewState();
}

class _DigitalPrescriptionListviewState extends State<DigitalPrescriptionListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.listItem.length,
        itemBuilder: (context, index) {

          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),

            margin: EdgeInsets.only(top: 10),
            child: Text(widget.listItem[index],textAlign:TextAlign.start,),
          );
        });
  }
}