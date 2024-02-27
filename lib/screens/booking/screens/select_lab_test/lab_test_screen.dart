import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/discount_screen/discount_screen.dart';
import 'package:i_hope_practise/screens/booking/screens/select_lab_test/widget/select_lab_test_item.dart';
import 'package:i_hope_practise/screens/booking/widget/payment_info.dart';

class LabTestScreen extends StatefulWidget {
  const LabTestScreen({super.key});

  @override
  State<LabTestScreen> createState() => _LabTestScreenState();
}

class _LabTestScreenState extends State<LabTestScreen> {
  List testListItem = [
    {
      "name": "Biopsy",
      "price": "500",
    },
    {
      "name": "4D Scan",
      "price": "1000",
    },
    {
      "name": "CBC / Hemogram Test",
      "price": "500",
    },
    {
      "name": "Dengue IgG Test",
      "price": "500",
    },
    {
      "name": "Hemoglobin (Hb) Test	",
      "price": "500",
    },
    {
      "name": "Nerve Conduction Velocity (NCV)",
      "price": "500",
    },
  ];
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Booking Appointment",
                style: TextStyleUtils.headingTextStyle(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 8,
              ),
              Text(
                "Step 2/3",
                style: TextStyleUtils.stepTextStyle(),
              ),
              const SizedBox(height: 48),
              Text(
                "Select Lab Test", style: TextStyleUtils.subtitleTextStyle(),),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search File",
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45)),
                ),
              ),

              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: testListItem.length,
                  itemBuilder: (context, index) {
                    totalPrice =
                        totalPrice + int.parse(testListItem[index]["price"]!);

                    return SelectLabTestItem(
                      name: testListItem[index]["name"].toString(),
                      price: testListItem[index]["price"].toString(),
                    );
                  }),
              const Spacer(),
              PaymentInfo(totalPrice: totalPrice),
              const SizedBox(height: 20,),

              SizedBox(

                  width: double.infinity,
                  child: ButtonWidget(
                    text: "Start",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const DiscountScreen()));
                      //
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
