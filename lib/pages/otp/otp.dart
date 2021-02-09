import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/BusinessInfo/businessInfo.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';
import 'package:yfobs_app/reusable/headerText.dart';
import 'package:yfobs_app/reusable/multipleText.dart';
import 'package:yfobs_app/reusable/topLogo.dart';

class OTP extends StatefulWidget {
  OTP({Key key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: '',
          action: null,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TopLogo(
                          image: msg,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: kDefaultPadding),
                          child: HeaderText(
                            text: 'OTP Verification',
                            size: 20.0,
                            color: kPrimaryColor,
                            weight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: kDefaultPadding),
                          child: MultipleText(
                            blkText: 'We sent you code to ',
                            clrText: '+91 123 456 ****',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: kDefaultPadding),
                          child: MultipleText(
                            blkText: 'Attempt Remaining : ',
                            weight: FontWeight.bold,
                            clrText: '03',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          key: _key,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: DefaultContainer(
                            top: kRadius,
                            bottom: kRadius,
                            child: DefaultTextFormField(
                              hintText: 'Enter OTP here',
                              type: TextInputType.phone,
                              length: 5,
                              validator: validateOTP,
                              prefix: Padding(
                                padding: const EdgeInsets.only(
                                  left: kMorePadding,
                                  right: kLessPadding,
                                ),
                                child: Icon(Icons.dialpad),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: kDefaultPadding),
                          child: MultipleText(
                            blkText: "If you did't receive a code! ",
                            weight: FontWeight.bold,
                            clrText: 'Resend',
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: kDefaultPadding),
                        //   child: Text.rich(
                        //     TextSpan(
                        //       children: [
                        //         TextSpan(
                        //           text: 'Please wait for one minute to receive OTP ',
                        //           style: TextStyle(
                        //             fontWeight: FontWeight.bold,
                        //           ),
                        //         ),
                        //         WidgetSpan(
                        //           child: TweenAnimationBuilder(
                        //             tween: Tween(begin: 60.0, end: 00.00),
                        //             duration: Duration(seconds: 60),
                        //             builder: (_, value, child) => Text(
                        //               "00:${value.toInt()}",
                        //               style: TextStyle(
                        //                 color: kPrimaryColor,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultContainer(
                          top: kRadius,
                          bottom: kRadius,
                          child: DefaultButton(
                            btnText: 'Verify',
                            press: () {
                              if (_key.currentState.validate()) {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => BusinessInfo(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Container(
                          height: kHeight,
                          // width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            // top: kLessPadding,
                            bottom: kMorePadding,
                          ),
                          padding: EdgeInsets.only(
                            left: kMorePadding,
                            right: kMorePadding,
                          ),
                          child: FlatButton(
                            onPressed: () => Navigator.of(context).pop(),
                            textColor: kDarkColor,
                            splashColor: kTransparent,
                            highlightColor: kAccentColor,
                            child: Text(
                              'Back',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
