import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.blue),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'See More',
            style: TextStyle(color: Colors.white),
          ),
          // <-- Text
          const SizedBox(
            width: 5,
          ),
          Image.asset(
            "assets/images/map.png",
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
