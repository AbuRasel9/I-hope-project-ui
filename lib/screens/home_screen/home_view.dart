import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/bottom_navigation_widget.dart';
import 'package:i_hope_practise/common_widget/carosoul_slider_widget.dart';
import 'package:i_hope_practise/common_widget/gridview_card_widget.dart';
import 'package:i_hope_practise/common_widget/input_feild_decoration.dart';
import 'package:i_hope_practise/common_widget/new_feture_gridview.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/text_style.dart';

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
      // appBar: buildAppBar(
      //   Switch(
      //     // This bool value toggles the switch.
      //     value: light,
      //
      //     activeColor: Colors.greenAccent,
      //     onChanged: (bool value) {
      //       // This is called when the user toggles the switch.
      //       setState(() {
      //         light = value;
      //       });
      //     },
      //   ),
      // ),
      body: Stack(
        children: [
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(top: 40),
            color: Utils.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/iHopeImage.png",height: 28,width: 80,fit: BoxFit.cover,),
                Row(
                  children: [
                    Text("BN",style: TextStyle(fontSize: 15,color: Colors.grey.shade300,),),
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

                    Text("EN",style: TextStyle(fontSize: 15,color: Colors.white,),),
                    SizedBox(width: 15,),
                    Icon(Icons.notifications_active,size: 24,),
                    SizedBox(width: 15,),

                    CircleAvatar(child: Image.asset("assets/images/profileImage.png"),),
                    SizedBox(width: 10,),
                  ],
                ),

                // Positioned(child: TextFormField(
                //   decoration: buildInputDecoration(text: "Enter name"),
                // ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Column(
                    children: [
                      const SizedBox(
                        height: 250,
                        child: GridViewCardWidget(
                          listItem: [
                            {
                              "imageUrl": "assets/images/uploadPrescription.png",
                              "text1": "Upload",
                              "text2": "Prescription"
                            },
                            {
                              "imageUrl": "assets/images/uploadPrescription.png",
                              "text1": "All",
                              "text2": "Self Test"
                            }
                          ],
                        ),
                      ),
                      //slider ..........=>
                      CarouselSliderWidget(),
                      const SizedBox(
                        height: 40,
                      ),
                      // NewFetureGridView()
                      Container(
                        padding: EdgeInsets.all(10),

                        color: Utils.lightColor,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                NewFetureCard(),
                                NewFetureCard(),
                              ],
                            ),
                            Row(
                              children: [
                                NewFetureCard(),
                                NewFetureCard(),
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
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}

