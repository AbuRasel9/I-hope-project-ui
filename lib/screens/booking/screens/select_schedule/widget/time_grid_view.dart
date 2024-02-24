import 'package:flutter/material.dart';

class TimeGridView extends StatelessWidget {
  final bool? noColor;
  final List<String> listitem;

  const TimeGridView({
    super.key,
    required this.listitem, this.noColor,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 40),
        itemBuilder: (context, index) {
          return  Chip(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),

            shape:StadiumBorder(side: BorderSide(color: Colors.black12)),
            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide.none),
            backgroundColor:noColor==true?Colors.white: index==0?Colors.blue:Colors.white,
            label: Text(listitem[index],style: TextStyle(color:index==1||index==5? Colors.black38:Colors.black),),
            surfaceTintColor: Colors.greenAccent,
          );
        });
  }
}
