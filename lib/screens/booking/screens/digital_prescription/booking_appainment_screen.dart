import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/choose_diagosnistic/choose_diagonistic_screen.dart';
import 'package:i_hope_practise/screens/booking/screens/digital_prescription/widget/digital_prescription_item.dart';

class BookingAppointmentScreen extends StatefulWidget {
  const BookingAppointmentScreen({super.key});

  @override
  State<BookingAppointmentScreen> createState() =>
      _BookingAppointmentScreenState();
}

class _BookingAppointmentScreenState extends State<BookingAppointmentScreen> {
  List digitalPrescriptionListItem = [
    "Biopsy",
    "4D Scan",
    "CBC / Hemogram Test	",
    "Dengue IgG Test	",
    "Hemoglobin (Hb) Test	",
    "Nerve Conduction Velocity (NCV)",
  ];

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
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Booking Appointment",
              style: TextStyleUtils.headingTextStyle(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 2,
            ),
            Text(
              "Digital Prescription",
              style: TextStyleUtils.subtitleTextStyle(),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: digitalPrescriptionListItem.length,
                  itemBuilder: (context, index) {
                    return DigitalPrescriptionItem(
                        presCriptionItem: digitalPrescriptionListItem[index]);
                  }),
            ),
            SizedBox(
              width: double.infinity,
              child: ButtonWidget(
                text: "Start",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseDiagonisticScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
