import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  final int totalPrice;
  const PaymentInfo({
    super.key, required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    const percentage=500;
    final subTotal=totalPrice-percentage;
    return Column(
      children: [
        const SizedBox(height: 40,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Total Price",style: TextStyle(fontSize: 17),),
            Text(totalPrice.toString(),style: const TextStyle(fontSize: 17),)
          ],
        ),
        const SizedBox(height: 20,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Discount",style: TextStyle(fontSize: 17),),
            Text("500",style: TextStyle(fontSize: 17),),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Sub Total",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Text(subTotal.toString(),style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}