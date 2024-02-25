import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/booking_info/widget/card_widget.dart';
import 'package:i_hope_practise/screens/booking/screens/booking_info/widget/see_more_button.dart';
import 'package:i_hope_practise/screens/booking/screens/discount_screen/discount_screen.dart';
import 'package:i_hope_practise/screens/booking/widget/payment_info.dart';

class BookingInfoScreen extends StatefulWidget {
  const BookingInfoScreen({super.key});

  @override
  State<BookingInfoScreen> createState() => _BookingInfoScreenState();
}

class _BookingInfoScreenState extends State<BookingInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Detail",
          style: headingTextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking Info",
                    style: subtitleTextStyle(),
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side:
                            BorderSide(color: Color.fromRGBO(72, 189, 105, 1))),
                    label: Text(
                      "Confirm",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Color.fromRGBO(72, 189, 105, 1),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 236, 242, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardWidget(
                      imagePath: 'assets/images/calender.png',
                      text2: '08.00 AM',
                      titleText: 'Date & Time',
                      text1: "Monday, 20 Jun 2022",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CardWidget(
                      imagePath: 'assets/images/family.png',
                      text2: 'Sarak,Panthapath, Dhaka 1205',
                      titleText: 'Appointment',
                      text1: "18 Bir Uttam Qazi Nuruzzaman ",
                      seeMoreButton: SeeMoreButton(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CardWidget(
                imagePath: "assets/images/doctor2.png",
                imagePath2: "assets/images/call.png",
                titleText: 'Diagonistic Info',
                text1: "Hospital & Diagonistic",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Payment Info",
                style: headingTextStyle(),
              ),
              PaymentInfo(totalPrice: 1000),
              SizedBox(
                height: 50,
              ),
              SizedBox(

                width: double.infinity,
                child: ButtonWidget(
                    text: "Confirm",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiscountScreen()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}


