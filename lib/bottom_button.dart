import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kColorOfBottomContainer,
        width: double.infinity,
        height: kHeightOfPinkContainer,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeTextButton,
          ),
        ),
      ),
    );
  }
}
