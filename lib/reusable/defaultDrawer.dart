import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/businessInfo/editBusinessInfo.dart';
import 'package:yfobs_app/pages/customers/customers.dart';
import 'package:yfobs_app/pages/dashBoard/dashBoard.dart';
import 'package:yfobs_app/pages/expenses/expenses.dart';
import 'package:yfobs_app/pages/gstCalculate/gstCalculate.dart';
import 'package:yfobs_app/pages/invoice/invoiceList.dart';
import 'package:yfobs_app/pages/products/products.dart';
import 'package:yfobs_app/pages/reports/reports.dart';
import 'package:yfobs_app/pages/vendors/vendors.dart';
import 'package:yfobs_app/reusable/defaultMenuListTile.dart';
import 'package:yfobs_app/reusable/headerText.dart';
import 'package:url_launcher/url_launcher.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => EditBusinessInfo(),
                ),
              );
            },
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    margin: EdgeInsets.only(
                      right: kDefaultPadding,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: DecorationImage(
                        image: AssetImage(placeholders),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeaderText(
                        text: 'Business Name',
                        size: 18.0,
                        color: kPrimaryColor,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      HeaderText(
                        text: 'Title',
                        size: kDefaultPadding,
                        color: kDarkColor,
                        weight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      HeaderText(
                        text: 'Email@email.com',
                        size: kFontSize,
                        color: kMediumColor,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          kDivider,
          Expanded(
            child: Container(
              color: kWhiteColor,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: menuLabels.length,
                itemBuilder: (context, index) {
                  return DefaultMenuListTile(
                    icon: menuIcons[index],
                    title: menuLabels[index],
                    tap: () {
                      if (menuLabels[index] == 'Help' ||
                          menuLabels[index] == 'Support' ||
                          menuLabels[index] == 'Rate this app') {
                        _launchURL(rateURL);
                        Navigator.of(context).pop();
                        switch (menuLabels[index]) {
                          case 'Help':
                            return _launchURL(helpURL.toString());
                            break;
                          case 'Support':
                            return _launchURL(supportURL.toString());
                            break;
                          case 'Rate this app':
                            return _launchURL(rateURL.toString());
                            break;
                          default:
                            return _launchURL(helpURL.toString());
                        }
                      } else {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (BuildContext context, _, __) {
                              switch (menuLabels[index]) {
                                case 'Dashboard':
                                  return DashBoard();
                                  break;
                                case 'Invoice':
                                  return InvoiceList();
                                  break;
                                case 'Expense':
                                  return Expenses();
                                  break;
                                case 'Customers':
                                  return Customers();
                                  break;
                                case 'Products':
                                  return Products();
                                  break;
                                case 'Vendors':
                                  return Vendors();
                                  break;
                                case 'Reports':
                                  return Reports();
                                  break;
                                case 'GST Calculate':
                                  return GSTCalculate();
                                  break;
                                default:
                                  return DashBoard();
                              }
                            },
                            transitionsBuilder: (_, Animation<double> animation,
                                __, Widget child) {
                              return new FadeTransition(
                                  opacity: animation, child: child);
                            },
                          ),
                        );
                      }
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return menuLabels[index] == 'GST Calculate' ||
                          menuLabels[index] == 'Rate this app'
                      ? kDivider
                      : Divider(
                          height: 0.0,
                          color: kWhiteColor,
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
