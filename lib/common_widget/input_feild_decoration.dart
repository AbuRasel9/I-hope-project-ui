
import 'package:flutter/material.dart';

import '../screens/home_screen/widget/utils/color.dart';

InputDecoration buildInputDecoration({required String text}) {
  return InputDecoration(
      prefixIcon: Icon(Icons.search),
      hintText: text,
      fillColor: Utils.lightColor,
      filled: true,
      border:OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12)
      )
  );
}