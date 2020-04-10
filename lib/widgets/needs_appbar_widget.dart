import 'package:flutter/material.dart';

class NeedsAppBar extends StatelessWidget with PreferredSizeWidget {
  final String screenTitle;
  final IconData icon;
  final Function onIconPressed;

  NeedsAppBar({this.icon, this.screenTitle, this.onIconPressed});

  @override
  get preferredSize => Size.fromHeight(60);

  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: onIconPressed,
        ),
      ),
      title: Text(screenTitle),
      centerTitle: true,
    );
  }
}
