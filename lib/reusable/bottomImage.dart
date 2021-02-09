import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class BottomImage extends StatelessWidget {
  const BottomImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(
          bottom: kMorePadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(secure),
                  height: 75.0,
                ),
                Image(
                  image: AssetImage(madeWith),
                  height: 75.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
