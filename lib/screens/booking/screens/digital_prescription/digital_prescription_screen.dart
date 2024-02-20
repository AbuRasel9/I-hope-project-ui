import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/choose_diagosnistic/choose_diagonistic_screen.dart';

import 'widget/digital_prescription_listview_widget.dart';

class BookingAppainmentScreen extends StatefulWidget {
  const BookingAppainmentScreen({super.key});

  @override
  State<BookingAppainmentScreen> createState() =>
      _BookingAppainmentScreenState();
}

class _BookingAppainmentScreenState extends State<BookingAppainmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15, right: 15, top: 30, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Booking Appointment",
                style: headingTextStyle(),
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .width / 2,),
              Text("Digital Prescription", style: subtitleTextStyle(),),
              Expanded(child: DigitalPrescriptionListview(listItem: [
                "Biopsy",
                "4D Scan",
                "CBC / Hemogram Test	",
                "Dengue IgG Test	",
                "Hemoglobin (Hb) Test	",
                "Nerve Conduction Velocity (NCV)",
              ])),


              SizedBox(
                  height: 48,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: ButtonWidget(text: "Start", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ChooseDiagonisticScreen()));
                  },))

            ],
          ),
        ),
      ),
    );
  }
}

