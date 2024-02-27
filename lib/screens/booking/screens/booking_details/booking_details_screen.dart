import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/booking_details/widget/booking_info_card.dart';
import 'package:i_hope_practise/screens/booking/screens/booking_details/widget/see_more_button.dart';
import 'package:i_hope_practise/screens/booking/screens/discount_screen/discount_screen.dart';
import 'package:i_hope_practise/screens/booking/widget/payment_info.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking Detail",
          style:TextStyleUtils. headingTextStyle(),
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
                    style: TextStyleUtils.subtitleTextStyle(),
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side:
                            const BorderSide(color: Color.fromRGBO(72, 189, 105, 1))),
                    label: const Text(
                      "Confirm",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(72, 189, 105, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 236, 242, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookingInfoCard(
                      imagePath: 'assets/images/calender.png',
                      text2: '08.00 AM',
                      titleText: 'Date & Time',
                      text1: "Monday, 20 Jun 2022",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    BookingInfoCard(
                      imagePath: 'assets/images/family.png',
                      text2: 'Sarak,Panthapath, Dhaka 1205',
                      titleText: 'Appointment',
                      text1: "18 Bir Uttam Qazi Nuruzzaman ",
                      seeMoreButton: const SeeMoreButton(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              BookingInfoCard(
                imagePath: "assets/images/doctor2.png",
                imagePath2: "assets/images/call.png",
                titleText: 'Diagonistic Info',
                text1: "Hospital & Diagonistic",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Payment Info",
                style:TextStyleUtils. headingTextStyle(),
              ),
              const PaymentInfo(totalPrice: 1000),
              const SizedBox(
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
                              builder: (context) => const DiscountScreen()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}


