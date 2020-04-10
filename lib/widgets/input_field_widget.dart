import 'package:flutter/material.dart';
import 'package:needs/constent.dart';

class InputFieldWidget extends StatelessWidget {
  final String hintText;
  final Function onFieldChanged;

  InputFieldWidget({@required this.hintText, @required this.onFieldChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          filled: true,
          fillColor: kPrimaryButtonColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Roboto',
            color: Color(0XFFA1A1A1),
          ),
        ),
        onChanged: onFieldChanged,
      ),
    );
  }
}
