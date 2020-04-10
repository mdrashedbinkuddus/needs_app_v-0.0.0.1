import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:needs/constent.dart';
import 'package:needs/screen/about_us_screen.dart';
import 'package:needs/screen/add_a_help_seeker_screen.dart';
import 'package:needs/screen/corona_update_screen.dart';
import 'package:needs/screen/donation_screen.dart';
import 'package:needs/screen/frontliner_screen.dart';
import 'package:needs/screen/services_screen.dart';
import 'package:needs/wrapper/Authenticate/startup_screen.dart';
import 'package:needs/screen/volunteer_list_screen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: ListView(
        children: <Widget>[
          //TODO: Need to customize this drawer header
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text("Hello")),

          CustomListTile(
            leadingIcon: FontAwesomeIcons.virus,
            menuText: "Corona Update",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, CoronaUpdate.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.userNurse,
            menuText: "Frontliners",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, FrontlinerScreen.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.male,
            menuText: "Volunteer List",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, VolunteerListScreen.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.handsHelping,
            menuText: "Add a Help Seeker",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, AddAHelpSeekerScreen.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.handHoldingUsd,
            menuText: "Donation",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, DonationScreen.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.briefcase,
            menuText: "Services",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, ServicesScreen.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.solidAddressCard,
            menuText: "About Us",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, AboutUsScreen.id),
          ),
          CustomListTile(
            leadingIcon: FontAwesomeIcons.signOutAlt,
            menuText: "Logout",
            menuTapNavigation: () =>
                Navigator.pushNamed(context, StartUpScreen.id),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: Center(
              child: Text(
                "\u00a9 Copywrite by \nMy Digital Consultant",
                textAlign: TextAlign.center,
                style: TextStyle(color: kPrimaryTextColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String menuText;
  final Function menuTapNavigation;

  CustomListTile(
      {this.leadingIcon,
      @required this.menuText,
      @required this.menuTapNavigation});

  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;

    return Container(
//      padding: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black26)),
      ),
      child: ListTile(
        onTap: menuTapNavigation,
        leading: Icon(
          leadingIcon,
          color: Colors.white,
        ),
        title: Text(
          menuText,
          style: TextStyle(
              color: kPrimaryTextColor, fontSize: 20.0),
        ),
        trailing: Icon(
          FontAwesomeIcons.angleRight,
          color: kPrimaryButtonColor,
        ),
      ),
    );
  }
}
