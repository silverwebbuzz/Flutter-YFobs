import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultOutlineButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class AddVendor extends StatefulWidget {
  AddVendor({Key key}) : super(key: key);

  @override
  _AddVendorState createState() => _AddVendorState();
}

class _AddVendorState extends State<AddVendor> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'New Vendor',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.arrow_back_ios,
              size: kSize,
              press: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        body: Column(
          children: [
            DefaultContainer(
              top: kMorePadding,
              bottom: kMorePadding,
              child: Form(
                key: _key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    DefaultOutlineButton(
                      btnText: 'Import From Contacts',
                      press: () {},
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Vendor name',
                      type: TextInputType.text,
                      validator: validateText,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Phone',
                      type: TextInputType.phone,
                      validator: validateMobile,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Email',
                      type: TextInputType.emailAddress,
                      validator: validateEmail,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Address',
                      type: TextInputType.text,
                      validator: validateText,
                    ),
                    kSizedBox,
                    DefaultButton(
                      btnText: 'Save',
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
