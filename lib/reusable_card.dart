import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colorOfCard, required this.cardChild});
  final Color colorOfCard;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colorOfCard,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
// #090C22
