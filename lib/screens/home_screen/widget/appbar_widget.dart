import 'package:flutter/material.dart';

import 'utils/utils.dart';
bool light = true;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.switchWidget,});

 final Widget switchWidget;

  @override
  Widget build(BuildContext context) {
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

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
