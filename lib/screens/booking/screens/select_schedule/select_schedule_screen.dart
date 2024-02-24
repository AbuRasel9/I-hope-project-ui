import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/booking_info/booking_info_screen.dart';
import 'package:i_hope_practise/screens/booking/screens/select_schedule/widget/select_schedure_gridview.dart';
import 'package:i_hope_practise/screens/booking/screens/select_schedule/widget/time_grid_view.dart';

class SelectScheduleScreen extends StatefulWidget {
  const SelectScheduleScreen({super.key});

  @override
  State<SelectScheduleScreen> createState() => _SelectScheduleScreenState();
}

class _SelectScheduleScreenState extends State<SelectScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Expected Arrival",
                style: headingTextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Step 2/3",
                style: stepTextStyle(),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: SelectScheduleGridview(
                  listitem: [
                    {
                      "dayName": "M",
                      "date": "10",
                    },
                    {
                      "dayName": "T",
                      "date": "11",
                    },
                    {
                      "dayName": "W",
                      "date": "12",
                    },
                    {
                      "dayName": "T",
                      "date": "13",
                    },
                    {
                      "dayName": "F",
                      "date": "14",
                    },
                    {
                      "dayName": "S",
                      "date": "15",
                    },
                  ],
                ),
              ),
              //divider line----------------->
              Divider(),
              Text("Morning",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color:  Colors.black38),),
              SizedBox(height: 20,),
              SizedBox(
                height: 250,
                child: TimeGridView(listitem: [
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                ]),
              ) , Text("Night",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color:  Colors.black38),),
              SizedBox(height: 10,),
              SizedBox(
                height: 220,
                child: TimeGridView(noColor: true,listitem: [
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                  "8.30 AM",
                ]),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ButtonWidget(text: "Continue", onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingInfoScreen()));
                }),
              )
          
            ],
          ),
        ),
      ),
      // body: Column(google all site offer data show),
    );
  }
}

