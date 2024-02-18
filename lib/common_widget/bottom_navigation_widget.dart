import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.blueAccent,
      items: [
        const CurvedNavigationBarItem(
          child: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        const CurvedNavigationBarItem(
          child: Icon(Icons.search),
          label: 'Search',
        ),
        const CurvedNavigationBarItem(
          child: Icon(Icons.chat_bubble_outline),
          label: 'Chat',
        ),
        const CurvedNavigationBarItem(
          child: Icon(Icons.newspaper),
          label: 'Feed',
        ),
        const CurvedNavigationBarItem(
          child: Icon(Icons.perm_identity),
          label: 'Personal',
        ),
      ],
      onTap: (index) {
        // Handle button tap
      },
    );
  }
}
