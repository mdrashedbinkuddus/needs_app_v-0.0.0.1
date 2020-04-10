import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:needs/constent.dart';
import 'package:needs/model/reusable_button.dart';
import 'package:needs/screen/user_login_screen.dart';
import 'package:needs/widgets/input_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = "Registration_Screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _value = false;
  final _launchUrl = 'https://flutter.dev';

  Future<void> _launchInBrowser(url) async {
    //Todo: Need to update URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Text of Registration page "User Registration"
              Container(
                padding: EdgeInsets.only(
                    top: deviceSize.height * .08,
                    bottom: deviceSize.height * .05),
                child: Text(
                  "User Registration",
                  style: TextStyle(
                      fontSize: deviceSize.height * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                // Margin use to contain the box size
                margin:
                    EdgeInsets.symmetric(horizontal: deviceSize.width * 0.06),
                child: Column(
                  children: <Widget>[
                    InputFieldWidget(hintText: "Your Name"),
                    InputFieldWidget(hintText: "Your Phone Number"),
                    InputFieldWidget(hintText: "Your Email"),
                    InputFieldWidget(hintText: "Your address"),
                    InputFieldWidget(hintText: "Police Station"),
                    InputFieldWidget(hintText: "Post Office"),
                    InputFieldWidget(hintText: "Set a password"),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:EdgeInsets.all(3.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _value = !_value;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),),
                                      child: _value
                                          ? Icon(
                                        Icons.check_box,
                                        size: 20.0,
                                        color: Colors.white,
                                      )
                                          : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "By clicking, you are accepted our service policy.",
                                    style: TextStyle(
                                      fontSize: deviceSize.height * .02,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, UserLoginScreen.id);
                          },
                          child: ReusableButton(
                            containerColor: kPrimaryButtonColor,
                            buttonChild: Text(
                              "Register",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: deviceSize.height * 0.02,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceSize.height * .08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("To register as a volunteer ", style: TextStyle(color: Colors.white),),
                        InkWell(
                          onTap: (){
                            _launchInBrowser(_launchUrl);
                          },
                          child: Text("clcik here"),
                        )
                      ],
                    ),
                    SizedBox(
                      height: deviceSize.height * .04,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
