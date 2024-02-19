import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/bottom_navigation_widget.dart';
import 'package:i_hope_practise/common_widget/carosoul_slider_widget.dart';
import 'package:i_hope_practise/common_widget/gridview_card_widget.dart';
import 'package:i_hope_practise/common_widget/input_feild_decoration.dart';
import 'package:i_hope_practise/common_widget/new_feture_gridview.dart';
import 'package:i_hope_practise/common_widget/quick_access_part.dart';
import 'package:i_hope_practise/common_widget/self_text_listview_widget.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/text_style.dart';
import 'package:i_hope_practise/screens/medical_record_screen/medical_record.dart';

import '../../common_widget/common_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom navigation---------------------->
      bottomNavigationBar: const BottomNavigationWidget(),

      appBar: buildAppBar(
        Switch(
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
                  decoration: buildInputDecoration(text: "Search a doctor or health issue"),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          // SizedBox(height: 90,),
                          const SizedBox(
                            height: 250,
                            child: GridViewCardWidget(
                              listItem: [
                                {
                                  "imageUrl":
                                      "assets/images/uploadPrescription.png",
                                  "text1": "Upload",
                                  "text2": "Prescription"
                                },
                                {
                                  "imageUrl":
                                      "assets/images/microScopeImage .png",
                                  "text1": "All",
                                  "text2": "Self Test"
                                }
                              ],
                            ),
                          ),
                          //slider ..........=>
                          const CarouselSliderWidget(),
                          const SizedBox(
                            height: 40,
                          ),
                          // NewFetureGridView()
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
                                  style:
                                      HeadingTextStyle(color: Colors.black),
                                ),
                                const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                    NewFetureCard(image: 'assets/images/stethoscope.png', text: 'Doctor',),
                                    NewFetureCard(image: "assets/images/ambulence.png", text: 'Ambulence',)
                                  ],
                                ),
                                const Row(
                                  children: [
                                    NewFetureCard(image: "assets/images/healthCare.png", text: 'Health Care',),
                                    NewFetureCard(
                                      image: 'assets/images/pharmecy.png', text: 'Pharmecy',
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )

                          // SizedBox(
                          //   child: NewFetureGridView(),
                          // )
                        ],
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
                        height: 465,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Self Test",
                                  style:
                                      HeadingTextStyle(color: Colors.black),
                                ),
                                Text(
                                  "Show More",
                                  style: HeadingTextStyle(
                                      color: Utils.primaryColor),
                                )
                              ],
                            ),
                            const Expanded(
                              child: SelfTextListView(
                                listItem: [
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0,bottom: 10),
                            child: Text(
                              "Quick Access",
                              style: HeadingTextStyle(color: Colors.black),
                            ),
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              quickAccessPart(
                                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalRecord()));},
                                text: 'Appainment',
                                imagePath: 'assets/images/appainment.png',
                              ),
                              quickAccessPart(
                                text: 'Consult Doctors',
                                imagePath: 'assets/images/doctor.png',
                              ),
                              quickAccessPart(
                                text: 'Institute',
                                imagePath: 'assets/images/intestine.png',
                              ),
                              quickAccessPart(
                                text: 'Health Package',
                                imagePath: 'assets/images/healthPackage.png',
                              ),

                            ],
                          )
                        ],
                      )

                    ],
                  ),
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

