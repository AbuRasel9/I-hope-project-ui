import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/choose_diagosnistic/widget/diagonistic_info_item.dart';
import 'package:i_hope_practise/screens/booking/screens/select_lab_test/lab_test_screen.dart';

class ChooseDiagonisticScreen extends StatefulWidget {
  const ChooseDiagonisticScreen({super.key});

  @override
  State<ChooseDiagonisticScreen> createState() =>
      _ChooseDiagonisticScreenState();
}

class _ChooseDiagonisticScreenState extends State<ChooseDiagonisticScreen> {
  List<Map<String, String>> diagonisticListItem = [
    {
      "coName": "Square Hospitals Ltd.",
      "coLocation": "Green Road, Dhaka 1205",
      "distance": "4.2 KM Away",
      "mobileNumber": "0134543",
      "savingsParcentage": "20%",
      "totalPrice": "6500",
    },
    {
      "coName": "LABAID Hospital.",
      "coLocation": "Green Road, Dhaka 1205",
      "distance": "4.2 KM Away",
      "mobileNumber": "0134543",
      "savingsParcentage": "20%",
      "totalPrice": "6500",
    },
    {
      "coName": "LABAID Specialized Hospital.",
      "coLocation": "Green Road, Dhaka 1205",
      "distance": "4.2 KM Away",
      "mobileNumber": "0134543",
      "savingsParcentage": "20%",
      "totalPrice": "6500",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Booking Appointment",
              style: TextStyleUtils.headingTextStyle(),
            ),
            Text(
              "Step 1/2",
              style: TextStyleUtils.stepTextStyle(),
            ),
            const SizedBox(height: 48),
            Text(
              "Choose Diagonistic",
              style: TextStyleUtils.subtitleTextStyle(),
            ),
            const SizedBox(
              height: 16,
            ),
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
                itemCount: diagonisticListItem.length,
                itemBuilder: (context, index) {
                  return DiagonisticInfoItem(
                    hospitalName:
                        diagonisticListItem[index]["coName"].toString(),
                    hospitalLocation:
                        diagonisticListItem[index]["coLocation"].toString(),
                    hospitalphn:
                        diagonisticListItem[index]["mobileNumber"].toString(),
                    hospitalsavingsParcentage: diagonisticListItem[index]
                            ["savingsParcentage"]
                        .toString(),
                    hospitaltotalPrice:
                        diagonisticListItem[index]["totalPrice"].toString(),
                    distance: diagonisticListItem[index]["distance"].toString(),
                  );
                }),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  text: "Continue",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LabTestScreen()));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
