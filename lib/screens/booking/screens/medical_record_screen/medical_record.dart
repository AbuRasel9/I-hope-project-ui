import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

import '../digital_prescription/digital_prescription_screen.dart';
import 'custom_timeline_tile.dart';


class MedicalRecord extends StatefulWidget {
  const MedicalRecord({super.key});

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Records"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BookingAppainmentScreen()));
              },
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purple.withOpacity(.1),
                  child: Image.asset("assets/images/upload.png")),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search File",
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(

                    )
                ),
              ],
            ),


            SizedBox(),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return CustomTimelineTile(
                    child: Text('Timeline Event 1'),
                    isFirst: index == 0 ? true : false,
                    isLast: index == 2 ? true : false, onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => BookingAppainmentScreen()));
                  },
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}
