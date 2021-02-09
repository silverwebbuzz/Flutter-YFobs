import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/Otp/otp.dart';
import 'package:yfobs_app/reusable/bottomImage.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/topLogo.dart';
import 'package:yfobs_app/reusable/headerText.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String _phoneNumber;
  // bool _autoValidate = false;

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
        body: Column(
          children: [
            // DefaultContainer(
            //   child: PhoneFieldHint(
            //     child: TextField(
            //       // cursorColor: kPrimaryColor,
            //       // keyboardType: TextInputType.phone,
            //       // maxLength: 10,
            //       // textInputAction: TextInputAction.next,
            //       // controller: _phone,
            //       decoration: InputDecoration(
            //         // border: InputBorder.none,
            //         // filled: true,
            //         // fillColor: kAccentColor,
            //         // hintText: 'Phone number',
            //         // hintStyle: kHintTextStyle,
            //         // contentPadding: EdgeInsets.only(
            //         //   top: kDefaultPadding,
            //         //   bottom: kDefaultPadding,
            //         //   left: kMorePadding,
            //         //   right: kMorePadding,
            //         // ),
            //         // errorText: validateMobile(_phone),
            //         prefixIcon: DefaultTextFormField(
            //           hintText: 'Phone number',
            //           type: TextInputType.phone,
            //           length: 10,
            //           validator: validateMobile,
            //           save: (String val) {
            //             _phoneNumber = val;
            //           },
            //           prefix: Container(
            //             padding: EdgeInsets.only(
            //               left: kMorePadding,
            //             ),
            //             width: 100.0,
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Center(
            //                   child: SvgPicture.asset(
            //                     india,
            //                     height: 24.0,
            //                     width: 24.0,
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(
            //                     left: kLessPadding,
            //                     right: kLessPadding,
            //                   ),
            //                   child: Text(
            //                     '+91',
            //                     style: TextStyle(
            //                       fontSize: kDefaultPadding,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         // Container(
            //         //   width: kShape,
            //         //   padding: EdgeInsets.only(left: kMorePadding),
            //         //   child: Row(
            //         //     children: [
            //         //       Center(
            //         //         child: SvgPicture.asset(
            //         //           india,
            //         //           height: 24.0,
            //         //           width: 24.0,
            //         //         ),
            //         //       ),
            //         //       Padding(
            //         //         padding: const EdgeInsets.only(
            //         //           left: kLessPadding,
            //         //           right: kLessPadding,
            //         //         ),
            //         //         child: Text(
            //         //           '+91',
            //         //           style: TextStyle(
            //         //             fontSize: kDefaultPadding,
            //         //           ),
            //         //         ),
            //         //       ),
            //         //     ],
            //         //   ),
            //         // ),
            //         focusedErrorBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(kShape),
            //           borderSide: BorderSide(color: kAccentColor),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(kShape),
            //           borderSide: BorderSide(
            //             color: kAccentColor,
            //           ),
            //         ),
            //         enabledBorder: UnderlineInputBorder(
            //           borderRadius: BorderRadius.circular(kShape),
            //           borderSide: BorderSide(
            //             color: kAccentColor,
            //           ),
            //         ),
            //         disabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(kShape),
            //           borderSide: BorderSide(
            //             color: kAccentColor,
            //           ),
            //         ),
            //         errorBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(kShape),
            //           borderSide: BorderSide(
            //             color: kAccentColor,
            //           ),
            //         ),
            //       ),
            //     ),
            //     autofocus: true,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(24),
            //   decoration: BoxDecoration(
            //     color: kAccentColor,
            //     borderRadius: BorderRadius.circular(24),
            //     border: Border(left: BorderSide()),
            //   ),
            //   child: PhoneFieldHint(
            //     autofocus: true,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(24),
            //   padding: EdgeInsets.only(
            //     left: kMorePadding,
            //   ),
            //   decoration: BoxDecoration(
            //     color: kAccentColor,
            //     borderRadius: BorderRadius.circular(24),
            //     // border: Border.all()
            //     border: Border(
            //       bottom: BorderSide(
            //         color: kAccentColor,
            //         width: 0,
            //       ),
            //       top: BorderSide(
            //         color: kAccentColor,
            //         width: 0,
            //       ),
            //       left: BorderSide(
            //         color: kAccentColor,
            //         width: 0,
            //       ),
            //       right: BorderSide(
            //         color: kAccentColor,
            //         width: 0,
            //       ),
            //     ),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       Center(
            //         child: SvgPicture.asset(
            //           india,
            //           height: 24.0,
            //           width: 24.0,
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(
            //           left: kLessPadding,
            //           right: kLessPadding,
            //         ),
            //         child: Text(
            //           '+91',
            //           style: TextStyle(
            //             fontSize: kDefaultPadding,
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         child: PhoneFieldHint(
            //           child: TextField(
            //             cursorColor: kPrimaryColor,
            //             decoration: InputDecoration(
            //               border: InputBorder.none,
            //             ),
            //           ),
            //           autofocus: true,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TopLogo(
                      image: logo,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: kDefaultPadding),
                      child: HeaderText(
                        text: 'Join Now',
                        size: 20.0,
                        color: kPrimaryColor,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: DefaultContainer(
                top: kRadius,
              bottom: kRadius,
                child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // PhoneFieldHint(
                      //   autofocus: true,
                      //   child: TextField(
                      //     autofocus: true,
                      //     // enabled: false,
                      //     decoration: InputDecoration(
                      //       filled: true,
                      //       fillColor: kWhiteColor,
                      //       prefixIcon: DefaultTextFormField(
                      //         autofocus: true,
                      //         hintText: 'Phone number',
                      //         type: TextInputType.phone,
                      //         length: 10,
                      //         validator: validateMobile,
                      //         save: (String val) {
                      //           _phoneNumber = val;
                      //         },
                      //         prefix: Container(
                      //           padding: EdgeInsets.only(
                      //             left: kMorePadding,
                      //           ),
                      //           width: 100.0,
                      //           child: Row(
                      //             mainAxisAlignment: MainAxisAlignment.start,
                      //             children: [
                      //               Center(
                      //                 child: SvgPicture.asset(
                      //                   india,
                      //                   height: 24.0,
                      //                   width: 24.0,
                      //                 ),
                      //               ),
                      //               Padding(
                      //                 padding: const EdgeInsets.only(
                      //                   left: kLessPadding,
                      //                   right: kLessPadding,
                      //                 ),
                      //                 child: Text(
                      //                   '+91',
                      //                   style: TextStyle(
                      //                     fontSize: kDefaultPadding,
                      //                   ),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(kShape),
                      //         borderSide: BorderSide(
                      //           width: kRadius,
                      //           color: kWhiteColor,
                      //         ),
                      //       ),
                      //       focusedErrorBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(kShape),
                      //         borderSide: BorderSide(
                      //           width: kRadius,
                      //           color: kWhiteColor,
                      //         ),
                      //       ),
                      //       focusedBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(kShape),
                      //         borderSide: BorderSide(
                      //           width: kRadius,
                      //           color: kWhiteColor,
                      //         ),
                      //       ),
                      //       enabledBorder: UnderlineInputBorder(
                      //         borderRadius: BorderRadius.circular(kShape),
                      //         borderSide: BorderSide(
                      //           width: kRadius,
                      //           color: kWhiteColor,
                      //         ),
                      //       ),
                      //       disabledBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(kShape),
                      //         borderSide: BorderSide(
                      //           width: kRadius,
                      //           color: kWhiteColor,
                      //         ),
                      //       ),
                      //       errorBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(kShape),
                      //         borderSide: BorderSide(
                      //           width: kRadius,
                      //           color: kWhiteColor,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      DefaultTextFormField(
                        hintText: 'Phone number',
                        type: TextInputType.phone,
                        length: 10,
                        validator: validateMobile,
                        save: (String val) {
                          _phoneNumber = val;
                        },
                        prefix: Container(
                          padding: EdgeInsets.only(
                            left: kMorePadding,
                          ),
                          width: 100.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Center(
                                child: SvgPicture.asset(
                                  india,
                                  height: 24.0,
                                  width: 24.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: kLessPadding,
                                  right: kLessPadding,
                                ),
                                child: Text(
                                  '+91',
                                  style: TextStyle(
                                    fontSize: kDefaultPadding,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      kSizedBox,
                      DefaultButton(
                        btnText: 'Sign In',
                        press: () {
                          if (_key.currentState.validate()) {
                            _key.currentState.save();
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => OTP(),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomImage(),
          ],
        ),
      ),
    );
  }
}
