import 'package:flutter/cupertino.dart';

class CommonContainerWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  const CommonContainerWidget({super.key, required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      padding: const EdgeInsets.all(10),
      child: child
    );
  }
}
