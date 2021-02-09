import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/signin/signin.dart';
import 'package:yfobs_app/reusable/myBehaviour.dart';

void main() {
  //StatusBar Overlay
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kWhiteColor,
    // statusBarBrightness: Brightness.light,
  ));
  // Portrait Mode Only
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'YFobs',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          fontFamily: 'SFProText',
          ),
      home: SignIn(),
    );
  }
}