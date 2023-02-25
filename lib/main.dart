import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

// TODO: hii
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090C22),
          //foregroundColor: Colors.white //here you can give the text color
        ),
      ),
      home: InputPage(),
    );
  }
}
