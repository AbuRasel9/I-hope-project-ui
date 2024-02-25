import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';
import 'package:i_hope_practise/screens/booking/screens/expacted_arrival/expacted_Arival_screen.dart';


class BookingAppainmentScreen extends StatefulWidget {

  const BookingAppainmentScreen({super.key});

  @override
  State<BookingAppainmentScreen> createState() =>
      _BookingAppainmentScreenState();
}

class _BookingAppainmentScreenState extends State<BookingAppainmentScreen> {
  List digitalPrescriptionListItem= [
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
              style: headingTextStyle(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 2,
            ),
            Text(
              "Digital Prescription",
              style: subtitleTextStyle(),
            ),
             Expanded(

               child: ListView.builder(
                   itemCount: digitalPrescriptionListItem.length,
                   itemBuilder: (context,index){
                 return  Container(
                   decoration: const BoxDecoration(
                       border:Border(
                           bottom: BorderSide(
                               width: 2,color: Colors.black12
                           )
                       )),


                   margin: const EdgeInsets.only(top: 16,),
                   child: Text(digitalPrescriptionListItem[index],style: const TextStyle(fontSize: 20),),
                 );
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
                          builder: (context) => const ExpactedArivalScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
