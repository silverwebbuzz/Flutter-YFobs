import 'package:contact_picker/contact_picker.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultOutlineButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class Customer extends StatefulWidget {
  Customer({Key key}) : super(key: key);

  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final ContactPicker _contactPicker = new ContactPicker();
  Contact _contact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        height: kToolbarHeight,
        title: 'Add Customer',
        action: [
          DefaultIconButton(
            icon: Icons.close,
            size: kSize,
            press: () => Navigator.of(context).pop(),
          ),
        ],
      ),
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
                    press: () async {
                      Contact contact = await _contactPicker.selectContact();
                      setState(() {
                        _contact = contact;
                      });
                    },
                  ),
                  kSizedBox,
                  Text('Customer name TextField (_contact.fullName)'),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'Phone number',
                    controller: TextEditingController(
                      text: _contact == null
                          ? 'Phone number'
                          : _contact.phoneNumber.number
                              .toString()
                              .replaceAll(RegExp(r"\s+"), ""),
                    ),
                    type: TextInputType.phone,
                    length: 10,
                    counter: '',
                    validator: validateMobile,
                  ),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'Email',
                    type: TextInputType.emailAddress,
                  ),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'GST number',
                    type: TextInputType.text,
                  ),
                  kSizedBox,
                  DefaultButton(
                    btnText: 'Add Customer',
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
