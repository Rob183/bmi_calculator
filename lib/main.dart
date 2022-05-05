import 'package:flutter/material.dart';
import 'screens/input_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: Color(0xFFEB1555),
          overlayColor: Color(0x29EB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8D98),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 13.0,
          ),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          trackHeight: 2.0,
        ),
      ),
      // home: ResultsPage(),
      home: InputPage(),
    );
  }
}
