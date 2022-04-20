import 'PasswordPageH.dart';
import 'PasswordPageV.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return PasswordPageH();
        } else {
          return PasswordPageV();
        }
      },
    );
  }
}
