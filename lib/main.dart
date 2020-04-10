import 'package:flutter/material.dart';
import 'package:needs/screen/about_us_screen.dart';
import 'package:needs/screen/add_a_help_seeker_screen.dart';
import 'package:needs/screen/cart_screen.dart';
import 'package:needs/screen/corona_update_screen.dart';
import 'package:needs/screen/donation_screen.dart';
import 'package:needs/screen/electrician_screen.dart';
import 'package:needs/wrapper/NewsFeed/feed_screen.dart';
import 'package:needs/screen/frontliner_screen.dart';
import 'package:needs/screen/marketplace_screen.dart';
import 'package:needs/screen/plumber_service_screen.dart';
import 'package:needs/screen/registration_screen.dart';
import 'package:needs/screen/services_screen.dart';
import 'package:needs/wrapper/Authenticate/startup_screen.dart';
import 'package:needs/screen/user_login_screen.dart';
import 'package:needs/screen/volunteer_list_screen.dart';
import 'package:needs/screen/volunteer_login_screen.dart';
import 'package:needs/wrapper/wrapper.dart';

void main() => runApp(NeedsApp());

class NeedsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0XFF00B8A9),
        scaffoldBackgroundColor: Color(0XFF00B8A9),
        canvasColor: Color(0XFF00B8A9),
        cursorColor: Color(0XFF00B8A9),
      ),
      initialRoute: Wrapper.id,

      //Navigation define here
      routes: {
        Wrapper.id: (context) => Wrapper(),
        StartUpScreen.id: (context) => StartUpScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        UserLoginScreen.id: (context) => UserLoginScreen(),
        VolunteerLoginScreen.id: (context) => VolunteerLoginScreen(),
        NewsFeedScreen.id: (context) => NewsFeedScreen(),
        ServicesScreen.id: (context) => ServicesScreen(),
        CoronaUpdate.id: (context) => CoronaUpdate(),
        FrontlinerScreen.id: (context) => FrontlinerScreen(),
        VolunteerListScreen.id: (context) => VolunteerListScreen(),
        AddAHelpSeekerScreen.id: (context) => AddAHelpSeekerScreen(),
        DonationScreen.id: (context) => DonationScreen(),
        AboutUsScreen.id: (context) => AboutUsScreen(),
        MarketplaceScreen.id: (context) => MarketplaceScreen(),
        PlumberServiceScreen.id: (context) => PlumberServiceScreen(),
        ElectricianServiceScreen.id: (context) => ElectricianServiceScreen(),
        CartScreen.id: (context) => CartScreen(),
      },
    );
  }
}
