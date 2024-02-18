import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/text_style.dart';

class GridViewCardWidget extends StatefulWidget {
  final List<Map<String,dynamic>> listItem;
  const GridViewCardWidget({
    super.key, required this.listItem,
  });

  @override
  State<GridViewCardWidget> createState() => _GridViewCardWidgetState();
}

class _GridViewCardWidgetState extends State<GridViewCardWidget> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widget.listItem.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1,crossAxisSpacing: 0,mainAxisSpacing: 0),
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(

              color: Utils.primaryColor,
              margin: EdgeInsets.only(top: 5,left: 10,),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: 10,),
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20,bottom: 5),
                    padding: EdgeInsets.all(15),

                    child: Image.asset(
                      widget.listItem[index]["imageUrl"],
                      height: 22,
                      width: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                    ),
                  ),
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("${widget.listItem[index]["text1"]}\n${widget.listItem[index]["text2"]}",style: HeadingTextStyle(color: index==0?Colors.black:Colors.white),),
                  ),


                ],
              ),
            ),
          );
        });
  }
}
