import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/booking/screens/medical_record_screen/medical_record.dart';
import 'package:i_hope_practise/screens/home_screen/widget/bottom_navigation_widget.dart';
import 'package:i_hope_practise/common_widget/carosoul_slider_widget.dart';
import 'package:i_hope_practise/screens/home_screen/widget/upload_test_card.dart';
import 'package:i_hope_practise/screens/home_screen/widget/input_feild_decoration.dart';
import 'package:i_hope_practise/screens/home_screen/widget/quick_access_part.dart';
import 'package:i_hope_practise/screens/home_screen/widget/self_text_card.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/utils.dart';

import 'widget/appbar_widget.dart';
import 'widget/new_feture_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List selfTestListItem = [
    "SGPT (Alanine Transaminase/ALT)",
    "Alkaline Phosphatase (ALP)",
    "TIBC (Total Iron Binding Capacity)",
    "CCR-24 Hrs Urine (Creatinine Clearance)",
    "eGFR (Epidermal Growth Factor Receptor)",
    "a)Na + b)K + c)Cl - d) TC02",
    "GFR (Glomerular Filtration Rate)",
    "GFR (Glomerular Filtration Rate)",
    "GFR (Glomerular Filtration Rate)",
    "GFR (Glomerular Filtration Rate)",
  ];
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom navigation---------------------->
      bottomNavigationBar: const BottomNavigationWidget(),

      appBar: CustomAppBar(
        switchWidget: Switch(
          // This bool value toggles the switch.
          value: light,

          activeColor: Colors.greenAccent,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                color: Utils.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 18),
                child: TextFormField(
                  decoration: buildInputDecoration(
                      text: "Search a doctor or health issue"),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                        height: 250,
                        child: Row(
                          children: [
                            Expanded(
                              child: UploadTestCard(
                                imageUrl:
                                    'assets/images/uploadPrescription.png',
                                text1: 'Upload',
                                text2: 'Prescription',
                                backgroundColor: Utils.primaryColor,
                                textColor: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: UploadTestCard(
                                imageUrl: 'assets/images/microScopeImage .png',
                                text1: 'All',
                                text2: 'Self Test',
                                backgroundColor: Utils.lightColor,
                                textColor: Colors.black,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    //slider ..........=>
                    const CarouselSliderWidget(),

                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Utils.lightColor,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NewFeture",
                            style: Utils.HeadingTextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           const Row(
                            children: [
                              Expanded(
                                child: NewFeaturesCard(
                                  image: 'assets/images/stethoscope.png',
                                  text: 'Doctor', backGroundColor: Color.fromRGBO(226, 242, 255, 1),
                                ),
                              ),
                              Expanded(
                                child: NewFeaturesCard(
                                  image: "assets/images/ambulence.png",
                                  text: 'Ambulence', backGroundColor: Color.fromRGBO(253, 222, 227, 1),
                                ),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: NewFeaturesCard(
                                  image: "assets/images/healthCare.png",
                                  text: 'Health Care', backGroundColor:  Color.fromRGBO(222, 233, 253, 1),
                                ),
                              ),
                              Expanded(
                                child: NewFeaturesCard(
                                  image: 'assets/images/pharmecy.png',
                                  text: 'Pharmecy', backGroundColor:  Color.fromRGBO(254, 237, 226, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Utils.lightColor,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Self Test",
                                style:
                                    Utils.HeadingTextStyle(color: Colors.black),
                              ),
                              Text(
                                "Show More",
                                style: Utils.HeadingTextStyle(
                                    color: Utils.primaryColor),
                              )
                            ],
                          ),
                          //self test part --------------->
                          SizedBox(
                              child: ListView.builder(
                                shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: selfTestListItem.length,
                                  itemBuilder: (context, index) {
                                    return SelfTestCard(
                                        text: selfTestListItem[index]);
                                  }))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, bottom: 10),
                      child: Text(
                        "Quick Access",
                        style: Utils.HeadingTextStyle(color: Colors.black),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        quickAccessPart(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MedicalRecord()));
                          },
                          text: 'Appainment',
                          imagePath: 'assets/images/appainment.png',
                        ),
                        const quickAccessPart(
                          text: 'Consult Doctors',
                          imagePath: 'assets/images/doctor.png',
                        ),
                        const quickAccessPart(
                          text: 'Institute',
                          imagePath: 'assets/images/intestine.png',
                        ),
                        const quickAccessPart(
                          text: 'Health Package',
                          imagePath: 'assets/images/healthPackage.png',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
