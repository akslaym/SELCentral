import 'package:flutter/material.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons(
      {Key key,
      this.color,
      this.page,
      this.title,
      this.icon,
      this.widthBlock,
      this.heightBlock})
      : super(key: key);
  final Color color;
  final Widget page;
  final String title;
  final IconData icon;
  final double widthBlock;
  final double heightBlock;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: color,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: color),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              ),
              child: Container(
                width: widthBlock * 40,
                height: heightBlock * 20,
                child: Icon(
                  icon,
                  size: heightBlock * 13,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: heightBlock * 1.5),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: heightBlock * 5,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                        color: Colors.grey[700],
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}
