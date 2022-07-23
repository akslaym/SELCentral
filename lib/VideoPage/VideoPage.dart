import 'QuoteFuntions/Quote.dart';
import 'VideoPageV.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  VideoPage(this.quote);
  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return VideoPageV(quote);
      },
    );
  }
}
