import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomSheet.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class AddCustomer extends StatefulWidget {
  AddCustomer({Key key}) : super(key: key);

  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final country = TextEditingController();
  final state = TextEditingController();
  final currency = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'New Customer',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.arrow_back_ios,
              size: kSize,
              press: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              DefaultContainer(
                top: kMorePadding,
                bottom: kMorePadding,
                child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      DefaultTextFormField(
                        hintText: 'Customer name',
                        type: TextInputType.text,
                        validator: validateText,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Email',
                        type: TextInputType.emailAddress,
                        validator: validateEmail,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Phone number',
                        type: TextInputType.phone,
                        length: 10,
                        counter: '',
                        validator: validateMobile,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Address',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      GestureDetector(
                        onTap: () {
                          void defaultDropDown(context) {
                            showModalBottomSheet(
                              backgroundColor: kDarkColor,
                              context: context,
                              isScrollControlled: true,
                              // clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.vertical(
                              //       top: Radius.circular(kMorePadding)),
                              // ),
                              builder: (BuildContext context) {
                                return DefaultDropDown(
                                  items: 50,
                                  // text: menuLabels[10],
                                );
                              },
                            );
                          }

                          defaultDropDown(context);
                        },
                        child: DefaultTextFormField(
                          hintText: 'Country',
                          enable: false,
                          controller: country,
                          validator: validateDropdown,
                          suffix: Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      kSizedBox,
                      GestureDetector(
                        onTap: () {
                          void defaultDropDown(context) {
                            showModalBottomSheet(
                              backgroundColor: kDarkColor,
                              context: context,
                              isScrollControlled: true,
                              // clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.vertical(
                              //       top: Radius.circular(kMorePadding)),
                              // ),
                              builder: (BuildContext context) {
                                return DefaultDropDown(
                                  items: 50,
                                  // text: menuLabels[10],
                                );
                              },
                            );
                          }

                          defaultDropDown(context);
                        },
                        child: DefaultTextFormField(
                          hintText: 'State',
                          enable: false,
                          controller: state,
                          validator: validateDropdown,
                          suffix: Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'City',
                        type: TextInputType.text,
                        validator: validateText,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Post code',
                        type: TextInputType.phone,
                        length: 6,
                        counter: '',
                        validator: validatePostCode,
                      ),
                      kSizedBox,
                      GestureDetector(
                        onTap: () {
                          void defaultDropDown(context) {
                            showModalBottomSheet(
                              backgroundColor: kDarkColor,
                              context: context,
                              isScrollControlled: true,
                              // clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.vertical(
                              //       top: Radius.circular(kMorePadding)),
                              // ),
                              builder: (BuildContext context) {
                                return DefaultDropDown(
                                  items: 50,
                                  // text: menuLabels[10],
                                );
                              },
                            );
                          }

                          defaultDropDown(context);
                        },
                        child: DefaultTextFormField(
                          hintText: 'Currency',
                          enable: false,
                          controller: currency,
                          validator: validateDropdown,
                          suffix: Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Business number',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'GST number',
                        type: TextInputType.text,
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
      ),
    );
  }
}
