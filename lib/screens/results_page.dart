import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/bottom_navigation.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    this.bmiResult,
    this.interpretationText,
    this.resultText,
  });

  final String bmiResult;
  final String resultText;
  final String interpretationText;

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
            padding: EdgeInsets.all(25),
            alignment: Alignment.bottomLeft,
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
                      resultText,
                      style: TextStyle(color: Colors.green, fontSize: 30),
                    ),
                    Text(
                      bmiResult,

                      // arguments.toString(),
                      style: kLargeResultNumber,
                    ),
                    Text(
                     interpretationText,
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
