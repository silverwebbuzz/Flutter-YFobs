import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF832685);
const kPrimaryLightColor = Color(0xFFC81379);
const kAccentColor = Color(0xFFFAF2FB);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFFF5F7FA);
const kMediumColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);
const kTransparent = Colors.transparent;

const kPaidColor = Colors.green;
const kUnpaidColor = Colors.red;
const kRecurringColor = Colors.orange;

const kMorePadding = 24.0;
const kLessPadding = 10.0;
const kDefaultPadding = 16.0;

const kHeight = 48.0;
const kBottoNavBarHeight = 64.0;
const kShape = 100.0;
const kRadius = 0.0;
const kSize = 28.0;

const kFontSize = 14.0;
const kIconSize = 20.0;

final kDivider = Divider(
  color: kDarkColor.withOpacity(0.1),
  thickness: 2.0,
  height: 2.0,
);

const kSizedBox = SizedBox(
  height: kDefaultPadding,
);

const kHeadingTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
  color: kLightColor,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20.0,
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
);

const kHintTextStyle = TextStyle(
  fontSize: 16.0,
  color: kMediumColor,
);

const kDarkTextStyle = TextStyle(
  fontSize: 20.0,
  color: kDarkColor,
);

const kErrorTextStyle = TextStyle(
  fontSize: 14.0,
);

final String logo = 'assets/images/logo.png';
final String india = 'assets/images/in.svg';
final String madeWith = 'assets/images/madeWith.png';
final String secure = 'assets/images/secure.png';
final String placeholders = 'assets/images/placeholders.png';
final String msg = 'assets/images/messenger.png';
final String splash = 'assets/images/splash.png';

final String helpURL = 'https://yfobs.in/help';
final String supportURL = 'https://yfobs.in/support';
final String rateURL =
    'https://play.google.com/store/apps/details?id=com.com.yfobs&hl=en';

final List<String> choices = <String>['Subscribe', 'Settings', 'SignOut'];

class Invoice {
  String invoice;
  double invoicevalue;
  Color colorval;

  Invoice(
    this.invoice,
    this.invoicevalue,
    this.colorval,
  );
}

class GST {
  String type;
  double amount;
  Color color;

  GST(
    this.type,
    this.amount,
    this.color,
  );
}

final menuLabels = [
  'Dashboard',
  'Invoice',
  'Expense',
  'Customers',
  'Products',
  'Vendors',
  'Reports',
  'GST Calculate',
  'Help',
  'Support',
  'Rate this app',
];

final menuIcons = [
  Icons.dashboard,
  Icons.receipt_long,
  Icons.request_page,
  Icons.people,
  Icons.pages,
  Icons.people_outline,
  Icons.analytics,
  Icons.calculate,
  Icons.help,
  Icons.support_agent,
  Icons.star_half,
];

final reports = [
  'GST 1',
  'Expense',
];

final expReportsHeader = [
  '#',
  'Vendors',
  'Tax',
  'Amount',
  'Net Amount',
  'Date',
];

final expReportsEntry = [
  '1',
  'Vendor name',
  '18%',
  '12,412.00',
  '13,000.00',
  '2020-11-24',
];

// final expReportsTotal = [
//   '',
//   '',
//   '36%',
//   '24,824.00',
//   '26,000.00',
//   '',
// ];

String validateMobile(String value) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Please Enter Phone number!";
  } else if (value.length != 10) {
    return "Phone number must 10 digits!";
  } else if (!regExp.hasMatch(value)) {
    return "Phone number must be digits!";
  }
  return null;
}

String validateOTP(String value) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Please Enter OTP!";
  } else if (value.length != 5) {
    return "OTP must 5 digits!";
  } else if (!regExp.hasMatch(value)) {
    return "OTP must be digits!";
  }
  return null;
}

String validatePostCode(String value) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Please Enter Post code!";
  } else if (value.length != 6) {
    return "Post code must 6 digits!";
  } else if (!regExp.hasMatch(value)) {
    return "Post code must be digits!";
  }
  return null;
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "Please Enter Email!";
  } else if (!regExp.hasMatch(value)) {
    return "Email must be validate!";
  }
  return null;
}

String validateText(String value) {
  if (value.length == 0) {
    return "Please Enter Value!";
  }
  return null;
}

String validateDropdown(String value) {
  if (value.length == 0) {
    return "Please Select Value!";
  }
  return null;
}

String validateNumber(String value) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Please Enter Value!";
  } else if (!regExp.hasMatch(value)) {
    return "Value must be digits!";
  }
  return null;
}