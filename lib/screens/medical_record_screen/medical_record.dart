import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

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
            child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.purple.withOpacity(.1),
                child: Image.asset("assets/images/upload.png")),
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

            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(child: Text("1"),),
                Padding(
                  padding: EdgeInsets.only(left: 4,top: 0),
                  child: new RotatedBox(
                      quarterTurns: 1,
                      child: new Text("-------------------")
                  ),

                ),
                CircleAvatar(child: Text("2"),),
                Padding(
                  padding: EdgeInsets.only(left: 4,top: 0),
                  child: new RotatedBox(
                      quarterTurns: 1,
                      child: new Text("-------------------")
                  ),

                ),

                CircleAvatar(child: Text("3"),),
                Padding(
                  padding: EdgeInsets.only(left: 4,top: 0),
                  child: new RotatedBox(
                      quarterTurns: 1,
                      child: new Text("-------------------")
                  ),

                ),
                CircleAvatar(child: Text("4"),),
                Padding(
                  padding: EdgeInsets.only(left: 4,top: 0),
                  child: new RotatedBox(
                      quarterTurns: 1,
                      child: new Text("-------------------")
                  ),

                ),

                CircleAvatar(child: Text("5"),),
                Padding(
                  padding: EdgeInsets.only(left: 4,top: 0),
                  child: new RotatedBox(
                      quarterTurns: 1,
                      child: new Text("-------------------")
                  ),

                ),
                CircleAvatar(child: Text("6"),),


              ],
            ),




            

          ],
        ),
      ),
    );
  }
}
