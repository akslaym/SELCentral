import 'LoginPageV.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return LoginPageV();
        } else {
          return LoginPageV();
        }
      },
    );
  }
}
