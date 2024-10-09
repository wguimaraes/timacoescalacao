import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String customTitle;
  MyAppBar({super.key, this.customTitle = "Timasso Escalação"});

  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(customTitle),
    );
  }
}
