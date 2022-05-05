import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_navigation.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "Your Result",
              style: kLargeButtonTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kInactiveCardcolor,
              cardChild: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "OVERWEIGHT",
                      style: TextStyle(color: Colors.green, fontSize: 30),
                    ),
                    Text(
                      "24.3",
                      style: kLargeResultNumber,
                    ),
                    Text(
                      "You are Fat",
                      style: kLargeButtonTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomNavigation(
              text: "GO BACK", navigator: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
