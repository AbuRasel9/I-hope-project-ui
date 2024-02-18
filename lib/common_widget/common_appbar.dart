import 'package:flutter/material.dart';

import '../screens/home_screen/widget/utils/color.dart';
import 'input_feild_decoration.dart';
bool light = true;

AppBar buildAppBar(Widget switchWidget) {

  return AppBar(

    backgroundColor: Utils.primaryColor,


    actions: [
      Text("BN",style: TextStyle(fontSize: 15,color: Colors.grey.shade300,),),
      switchWidget,

      Text("EN",style: TextStyle(fontSize: 15,color: Colors.white,),),
      SizedBox(width: 15,),
      Icon(Icons.notifications_active,size: 24,),
      SizedBox(width: 15,),

      CircleAvatar(child: Image.asset("assets/images/profileImage.png"),),
      SizedBox(width: 10,)

    ],
    title: Image.asset("assets/images/iHopeImage.png",height: 28,width: 80,fit: BoxFit.cover,),
    bottom: PreferredSize(
        preferredSize: Size(150, 100), child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: buildInputDecoration(text: 'Search a doctor or health issue'),
      ),
    )),
  );
}