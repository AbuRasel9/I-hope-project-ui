import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/choose_diagosnistic/widget/listview.dart';
import 'package:i_hope_practise/screens/booking/screens/select_lab_test/lab_test_screen/lab_test_screen.dart';

class ChooseDiagonisticScreen extends StatefulWidget {
  const ChooseDiagonisticScreen({super.key});

  @override
  State<ChooseDiagonisticScreen> createState() =>
      _ChooseDiagonisticScreenState();
}

class _ChooseDiagonisticScreenState extends State<ChooseDiagonisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
              left: 15, right: 15, top: 30, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Booking Appointment",
                style: headingTextStyle(),
              ),
              Text("Step 1/2", style: stepTextStyle(),),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .width / 7,),
              Text("Choose Diagonistic", style: subtitleTextStyle(),),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search File",
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45)),
                ),
              ),
              ListViewWidget(

                  listItem: [{
                    "image": "assets/images/location.png",
                    "coName": "Square Hospitals Ltd.",
                    "coLocation": "Green Road, Dhaka 1205",
                    "distance": "4.2 KM Away",
                    "mobileNumber": "0134543",
                    "savingsParcentage": "20%",
                    "totalPrice": "6500",

                  },
                    {
                      "image": "assets/images/labaid.png",
                      "coName": "LABAID Hospital.",
                      "coLocation": "Green Road, Dhaka 1205",
                      "distance": "4.2 KM Away",
                      "mobileNumber": "0134543",
                      "savingsParcentage": "20%",
                      "totalPrice": "6500",

                    },
                    // {
                    //   "image":"assets/images/location.png",
                    //   "coName":"LABAID Specialized Hospital.",
                    //   "coLocation":"Green Road, Dhaka 1205",
                    //   "distance":"4.2 KM Away",
                    //   "mobileNumber":"0134543",
                    //   "savingsParcentage":"20%",
                    //   "totalPrice":"6500",
                    //
                    // }

                  ]),


              SizedBox(
                  height: 48,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: ButtonWidget(text: "Continue", onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>LabTestScreen()));
                  },))

            ],
          ),
        ),
      ),
    );
  }
}
