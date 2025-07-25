import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.colour, this.cardChild, this.onPress});

  final Color? colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild ?? const SizedBox(),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour?? Colors.grey,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}