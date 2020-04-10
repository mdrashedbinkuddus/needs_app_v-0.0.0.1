import 'package:flutter/material.dart';

// This class is for using in button and background

class ReusableButton extends StatelessWidget {
  final String labelText;
  final Color containerColor;
  final Color textColor;
  final Widget buttonChild;

  ReusableButton({this.labelText, this.containerColor, this.textColor, this.buttonChild});

  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;


    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .02,
        horizontal: deviceSize.width * .07,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0.0, 3.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: buttonChild,
    );
  }
}
