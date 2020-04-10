import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:needs/constent.dart';

class SOSButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      tooltip: 'For Emergency Support Only',
      icon: Icon(FontAwesomeIcons.lifeRing),
      label: Text("SOS", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      backgroundColor: kSOSButtonColor,
//     TODO: Add SOS functionality
      onPressed: null,
    );
  }
}
