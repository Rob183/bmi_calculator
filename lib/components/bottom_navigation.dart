import 'package:flutter/material.dart';
import 'constants.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
   @required this.text,
   @required this.navigator,
  });

  final String text;
  final Function navigator;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigator,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        height: kBottonContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
        ),
      ),
    );
  }
}
