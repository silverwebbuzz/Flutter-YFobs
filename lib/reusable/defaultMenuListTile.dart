import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultMenuListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function tap;
  const DefaultMenuListTile({
    Key key,
    this.title,
    this.icon,
    this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.all(kRadius),
      dense: true,
      tileColor: kWhiteColor,
      selectedTileColor: kAccentColor,
      leading: Icon(
        icon,
        color: kDarkColor.withOpacity(0.7),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: kDefaultPadding,
          color: kDarkColor.withOpacity(0.8),
          // fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tap,
    );
  }
}
