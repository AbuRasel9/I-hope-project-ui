import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/booking/widget/payment_info.dart';

class LabTestListView extends StatefulWidget {
  final List<Map<String,String>> listItem;
  const LabTestListView({
    super.key, required this.listItem,
  });

  @override
  State<LabTestListView> createState() => _LabTestListViewState();
}

class _LabTestListViewState extends State<LabTestListView> {

  int totalPrice=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(

            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.listItem.length,
            itemBuilder: (context, index) {
              totalPrice=totalPrice+int.parse(widget.listItem[index]["price"]!);

              return Container(
                decoration: BoxDecoration(
                  border:Border(
                    bottom: BorderSide(
                        width: 2,color: Colors.black12
                    )
                  )),
                  // borderRadius: BorderRadius.circular(15),),
                // padding: EdgeInsets.only(top: 10),

                margin: EdgeInsets.only(top: 16,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.listItem[index]["name"].toString(),style: TextStyle(fontSize: 17),),
                    Text(widget.listItem[index]["price"].toString(),style: TextStyle(fontSize: 17),),

                  ],
                ),
              );
            }),
        SizedBox(height: 10,),


        PaymentInfo(totalPrice: totalPrice,)

      ],
    );
  }
}

