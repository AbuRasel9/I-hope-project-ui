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

        const Text("EN",style: TextStyle(fontSize: 15,color: Colors.white,),),
        const SizedBox(width: 15,),
        const Icon(Icons.notifications_active,size: 24,),
        const SizedBox(width: 15,),

        CircleAvatar(child: Image.asset("assets/images/profileImage.png"),),
        const SizedBox(width: 10,)

      ],
      title: Image.asset("assets/images/iHopeImage.png",height: 28,width: 80,fit: BoxFit.cover,),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
