import 'package:flutter/material.dart';
import '../model/reusable_button.dart';
import '../constent.dart';
import '../widgets/input_field_widget.dart';

//TODO: Need to add login functionality

class VolunteerLoginScreen extends StatelessWidget {
  static String id = "Volunteer_Login_Screen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Input field for email or phone number
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,),
            child: InputFieldWidget(
              hintText: "Enter your email",
            ),
          ),

          // Input field for password
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,),
            child: InputFieldWidget(
              hintText: "Enter your password",
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //TODO: Use this text a link for recover password.
              GestureDetector(
                onTap: () {
                  print("User forget password");
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Forget password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(right: 30.0),
                  child: ReusableButton(
                    containerColor: kPrimaryButtonColor,
                    buttonChild: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
