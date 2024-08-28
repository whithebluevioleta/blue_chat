import 'package:flutter/material.dart';

class NavigationHelper {
  static void navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
