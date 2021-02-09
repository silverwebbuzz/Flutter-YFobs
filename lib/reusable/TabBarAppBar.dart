import 'package:flutter/material.dart';

class TabBarAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;
  const TabBarAppBar({
    Key key, this.child, this.height,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(400.0);
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.orange,
      alignment: Alignment.center,
      child: child,
    );
  }
}
