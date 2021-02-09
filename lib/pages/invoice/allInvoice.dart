import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultCardBox.dart';
import 'package:yfobs_app/reusable/defaultSearchBox.dart';

class AllInvoice extends StatefulWidget {
  AllInvoice({Key key}) : super(key: key);

  @override
  _AllInvoiceState createState() => _AllInvoiceState();
}

class _AllInvoiceState extends State<AllInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          DefaultSearchBox(
              // filter: (){},
              ),
          DefaultCardBox(
            name: 'Customer Name',
            recurring: 'Active',
            recurringColor: kPrimaryColor,
            status: 'Unpaid',
            statusColor: kUnpaidColor,
            invoiceNo: 'Invoice #2020-27',
            date: '2020-11-20',
            total: 'Total : ₹7878.00',
            tapPrint: (TapDownDetails details) => print('Print'),
            tapShare: (TapDownDetails details) => print('Share'),
            tapMore: (TapDownDetails details) {
              print('More');
              _showPopupMenu(details.globalPosition);
            },
          ),
        ],
      ),
    );
  }

  _showPopupMenu(Offset offset) async {
    double left = offset.dx;
    double top = offset.dy;
    await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(left, top, 0, 0),
      items: <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          height: 44,
          child: Text('Send'),
          value: 'Send',
        ),
        PopupMenuItem<String>(
          height: 44,
          child: Text('Draft'),
          value: 'Draft',
        ),
        PopupMenuItem<String>(
          height: 44,
          child: Text('Discard'),
          value: 'Discard',
        ),
      ],
      elevation: 8.0,
    );
  }
}
