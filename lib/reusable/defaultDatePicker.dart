import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class DefaultDatePicker extends StatefulWidget {
  DefaultDatePicker({Key key}) : super(key: key);

  @override
  _DefaultDatePickerState createState() => _DefaultDatePickerState();
}

class _DefaultDatePickerState extends State<DefaultDatePicker> {
  DateTime selectedDate = DateTime.now();

  selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      // helpText: 'Select booking date',
      // cancelText: 'Not now',
      // confirmText: 'Book',
      // errorFormatText: 'Enter valid date',
      // errorInvalidText: 'Enter date in valid range',
      // fieldLabelText: 'Booking date',
      // fieldHintText: 'Month/Date/Year',
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            primaryColor: kPrimaryColor,
            accentColor: kPrimaryColor,
            colorScheme: ColorScheme(
              primaryVariant: kPrimaryColor,
              primary: kPrimaryColor,
              onPrimary: kWhiteColor,
              secondaryVariant: kPrimaryColor,
              secondary: kPrimaryColor,
              onSecondary: kPrimaryColor,
              background: kPrimaryColor,
              onBackground: kPrimaryColor,
              surface: kPrimaryColor,
              onSurface: kPrimaryColor,
              brightness: Brightness.light,
              error: kPrimaryColor,
              onError: kPrimaryColor,
            ),
          ),
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectDate(context),
      child: DefaultTextFormField(
        hintText: 'Select date',
        controller: TextEditingController(
            text:
                '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
        enable: false,
        suffix: Icon(
          Icons.arrow_drop_down,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
