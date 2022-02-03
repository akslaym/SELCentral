import 'AccountTypePageH.dart';
import 'AccountTypePageV.dart';
import 'package:flutter/material.dart';

class AccountTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return AccountTypePageH();
        } else {
          return AccountTypePageV();
        }
      },
    );
  }
}
