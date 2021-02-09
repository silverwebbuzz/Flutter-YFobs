import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

enum MenuOption { Send, Draft, Discard }

class DefaultPopupMenu extends StatelessWidget {
  const DefaultPopupMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      icon: Icon(Icons.more_vert, size: 20.0, color: kPrimaryColor,),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Send'),
            // child: Icon(Icons.send, color: Colors.black, size: 28.0),
            value: MenuOption.Send,
          ),
          PopupMenuItem(
            child: Text('Draft'),
            // child: Icon(Icons.drafts, color: Colors.black, size: 28.0),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            child: Text('Discard'),
            // child: Icon(Icons.cancel, color: Colors.black, size: 28.0),
            value: MenuOption.Discard,
          ),
        ];
      },
    );
  }
}