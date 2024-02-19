import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/booking_appainment/widget/digital_prescription_listview_widget.dart';
import 'package:i_hope_practise/screens/booking_appainment/widget/text_style.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Booking Appointment",
              style: headingTextStyle(),
            ),
            Text("Digital Prescription"),
            Expanded(child: DigitalPrescriptionListview(listItem: [
              "Biopsy",
              "4D Scan",
              "CBC / Hemogram Test	",
              "Dengue IgG Test	",
              "Hemoglobin (Hb) Test	",
              "Nerve Conduction Velocity (NCV)",
            ]))
          ],
        ),
      ),
    );
  }
}
