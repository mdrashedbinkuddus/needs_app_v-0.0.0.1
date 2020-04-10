import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:needs/constent.dart';
import 'package:needs/model/reusable_button.dart';
import 'package:needs/wrapper/NewsFeed/feed_screen.dart';
import 'package:needs/widgets/input_field_widget.dart';


//TODO: Need to add user login functionality


class UserLoginScreen extends StatefulWidget {
  static String id = "User_Login_Screen";

  @override
  _UserLoginScreenState createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  IconData checkIcon = FontAwesomeIcons.solidCheckSquare;
  bool isChecked = false;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Input field for email or phone number
            InputFieldWidget(
              hintText: "Enter your email",
              onFieldChanged: (value){
                setState(() {
                  email = value;
                });
              },
            ),
            // Input field for password
            InputFieldWidget(
              hintText: "Enter your password",
              onFieldChanged: (value){
                setState(() {
                  password = value;
                });
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //TODO: Use this text a link for recover password.
                GestureDetector(
                  onTap: () {
                    print("User forget password");
                  },
                  child: Text(
                    "Forget password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                GestureDetector(
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
                  onTap: () => Navigator.pushNamed(context, NewsFeedScreen.id),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
