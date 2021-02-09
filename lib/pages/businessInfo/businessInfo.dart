import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/dashBoard/dashBoard.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomSheet.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';
import 'package:yfobs_app/reusable/topLogo.dart';

class BusinessInfo extends StatefulWidget {
  BusinessInfo({Key key}) : super(key: key);

  @override
  _BusinessInfoState createState() => _BusinessInfoState();
}

class _BusinessInfoState extends State<BusinessInfo> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final businessType = TextEditingController();
//   String dropdownValue;

//   List<String> dropList = [
//   'Dashboard',
//   'Invoice',
//   'Expense',
//   'Customers',
//   'Products',
//   'Vendors',
//   'Reports',
//   'GST Calculate',
//   'Help',
//   'Support',
//   'Rate this app',
// ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: '',
          leading: null,
        ),
        drawerEnableOpenDragGesture: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopLogo(
                image: logo,
              ),
              SizedBox(
                height: kBottoNavBarHeight,
              ),
              DefaultContainer(
                top: kRadius,
                bottom: kRadius,
                child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      DefaultTextFormField(
                        hintText: 'Name',
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
                        hintText: 'Business name',
                        type: TextInputType.text,
                        validator: validateText,
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
                          hintText: 'Business type',
                          enable: false,
                          controller: businessType,
                          validator: validateDropdown,
                          suffix: Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      kSizedBox,
                      // DropdownButtonFormField(
                      //   hint: Text('Business type'),
                      //   value: dropdownValue,
                      //   icon: Icon(Icons.arrow_downward),
                      //   iconSize: 24,
                      //   elevation: 16,
                      //   style: TextStyle(color: Colors.deepPurple),
                      //   onChanged: (String newValue) {
                      //     setState(() {
                      //       dropdownValue = newValue;
                      //     });
                      //   },
                      //   items: dropList
                      //       .map((dropItem) {
                      //     return DropdownMenuItem<String>(
                      //       value: dropItem[10].toString(),
                      //       child: Text(dropItem[10].toString()),
                      //     );
                      //   }).toList(),
                      // ),
                      // kSizedBox,
                      DefaultButton(
                        btnText: 'Continue',
                        press: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => DashBoard(),
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
    );
  }
}
