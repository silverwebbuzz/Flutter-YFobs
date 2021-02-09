import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultDatePicker.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class AddExpenses extends StatefulWidget {
  AddExpenses({Key key}) : super(key: key);

  @override
  _AddExpensesState createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'New Expenses',
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
                    DefaultTextFormField(
                      hintText: 'Expense amount',
                      type: TextInputType.phone,
                      validator: validateNumber,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Tax %',
                      type: TextInputType.phone,
                    ),
                    kSizedBox,
                    Text('Vendors TextField'),
                    kSizedBox,
                    Text('Expenses Category TextField'),
                    kSizedBox,
                    DefaultDatePicker(),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Notes',
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
    );
  }
}
