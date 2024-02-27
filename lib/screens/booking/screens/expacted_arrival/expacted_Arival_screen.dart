import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/booking_details/booking_details_screen.dart';
import 'package:i_hope_practise/screens/booking/screens/expacted_arrival/widget/time_schedule_item.dart';
import 'package:i_hope_practise/screens/booking/screens/expacted_arrival/widget/date_schedule_item.dart';

class ExpactedArivalScreen extends StatefulWidget {
  const ExpactedArivalScreen({super.key});

  @override
  State<ExpactedArivalScreen> createState() => _ExpactedArivalScreenState();
}

class _ExpactedArivalScreenState extends State<ExpactedArivalScreen> {
  int? selectedDate;
  int? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Expected Arrival",
                style:TextStyleUtils. headingTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Step 2/3",
                style:TextStyleUtils. stepTextStyle(),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Select Schedule",
                style:TextStyleUtils. subtitleTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DateScheduleItem(
                        date: "M\n\n10",
                        isSelected: index == selectedDate,
                        isDisable: index == 2,
                        onTap: (){
                          setState(() {
                            selectedDate=index;
                          });
                        },

                      );
                    }),
              ),
              //divider line----------------->
              const Divider(),
              const Text(
                "Morning",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black38),
              ),
              GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                  ),
                  itemBuilder: (context, index) {
                    return TimeScheduleItem(
                      time: '8.30AM',
                      isDisable: index == 2,
                      isSelected: index == selectedTime,
                      onTap: () {
                        setState(() {
                          selectedTime = index;
                        });
                      },
                    );
                  }),

              const Text(
                "Night",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black38),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                  ),
                  itemBuilder: (context, index) {
                    return TimeScheduleItem(
                      time: '8.30AM',
                      isDisable: index == 2,
                      isSelected: index == selectedTime,
                      onTap: () {
                        setState(() {
                          selectedTime = index;
                        });
                      },
                    );
                  }),
              const SizedBox(
                height: 40,
              ),

              SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                    text: "Continue",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookingDetailsScreen()));
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
