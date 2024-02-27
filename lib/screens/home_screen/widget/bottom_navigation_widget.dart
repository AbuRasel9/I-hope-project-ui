import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/utils.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(

      iconPadding:15,
      color:Utils.lightColor,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Utils.primaryColor,
      items: const [
        CurvedNavigationBarItem(
          child: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.add),
          label: 'Search',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.message),
          label: 'Chat',
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.person_pin),
          label: 'Feed',
        ),
       
      ],
      onTap: (index) {
        // Handle button tap
      },
    );
  }
}
