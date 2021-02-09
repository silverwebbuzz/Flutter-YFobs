import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final leading, action, bottom, height;
  const DefaultAppBar({
    Key key,
    this.title,
    this.leading,
    this.action,
    this.bottom,
    this.height,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: kRadius,
      automaticallyImplyLeading: false,
      brightness: Brightness.light,
      title: Text(
        title,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: leading,
      actions: action,
      bottom: bottom,
    );
  }
}
