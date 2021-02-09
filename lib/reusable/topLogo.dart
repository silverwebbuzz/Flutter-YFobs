import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class TopLogo extends StatelessWidget {
  final image;
  const TopLogo({
    Key key, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.all(
          Radius.circular(kShape),
        ),
      ),
      child: Center(
        child: Image(
          height: 50.0,
          width: 50.0,
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}