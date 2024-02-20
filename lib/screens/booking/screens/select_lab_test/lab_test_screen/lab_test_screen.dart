import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/choose_diagosnistic/choose_diagonistic_screen.dart';
import 'package:i_hope_practise/screens/booking/screens/digital_prescription/widget/digital_prescription_listview_widget.dart';
import 'package:i_hope_practise/screens/booking/screens/select_lab_test/widget/lab_test_list_view.dart';


class LabTestScreen extends StatefulWidget {
  const LabTestScreen({super.key});

  @override
  State<LabTestScreen> createState() =>
      _LabTestScreenState();
}

class _LabTestScreenState extends State<LabTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15, right: 15, top: 30, bottom: 20),
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
                  .width / 8,),
              Text("Digital Prescription", style: subtitleTextStyle(),),
              Expanded(child: LabTestListView(listItem: [
                {
                  "name":"Biopsy",
                  "price":"500",

                },{
                  "name":"4D Scan",
                  "price":"1000",

                },{
                  "name":"CBC / Hemogram Test",
                  "price":"500",

                },{
                  "name":"Dengue IgG Test",
                  "price":"500",

                },
                {
                  "name":"Hemoglobin (Hb) Test	",
                  "price":"500",

                },{
                  "name":"Nerve Conduction Velocity (NCV)",
                  "price":"500",

                },

                // "Biopsy",
                // "4D Scan",
                // "CBC / Hemogram Test	",
                // "Dengue IgG Test	",
                // "Hemoglobin (Hb) Test	",
                // "Nerve Conduction Velocity (NCV)",
              ])),


              SizedBox(
                  height: 48,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: ButtonWidget(text: "Start", onPressed: () {
                    //  
                  },))

            ],
          ),
        ),
      ),
    );
  }
}

