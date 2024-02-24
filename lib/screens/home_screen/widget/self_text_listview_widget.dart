import 'package:flutter/material.dart';

class SelfTextListView extends StatefulWidget {
  final List<String> listItem;
  const SelfTextListView({
    super.key, required this.listItem,
  });

  @override
  State<SelfTextListView> createState() => _SelfTextListViewState();
}

class _SelfTextListViewState extends State<SelfTextListView> {
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