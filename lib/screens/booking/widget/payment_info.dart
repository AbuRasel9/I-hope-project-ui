import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  final int totalPrice;
  const PaymentInfo({
    super.key, required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    final parcentage=500;
    final subTotal=totalPrice-parcentage;
    return Column(
      children: [
        SizedBox(height: 40,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Price",style: TextStyle(fontSize: 17),),
            Text(totalPrice.toString(),style: TextStyle(fontSize: 17),)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Discount",style: TextStyle(fontSize: 17),),
            Text("500",style: TextStyle(fontSize: 17),),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sub Total",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Text(subTotal.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}