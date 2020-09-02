import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colaru, this.cardChild, this.onPressed});
  final Color colaru;
  final Widget cardChild;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colaru,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
