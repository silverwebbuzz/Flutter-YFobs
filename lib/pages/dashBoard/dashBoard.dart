import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/invoice/addInvoice.dart';
import 'package:yfobs_app/pages/notifications/notifications.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomCenterButton.dart';
import 'package:yfobs_app/reusable/defaultCard.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/headerTextContainer.dart';
import 'package:yfobs_app/reusable/headerText.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<charts.Series<GST, String>> _gstData;
  List<charts.Series<Invoice, String>> _invoiceData;

  _generateData() {
    var invoiceData = [
      Invoice('Paid', 35.8, kPaidColor),
      Invoice('Partially', 8.3, kPaidColor.withOpacity(0.6)),
      Invoice('Unpaid', 10.8, kUnpaidColor),
    ];

    _invoiceData.add(
      charts.Series(
        domainFn: (Invoice invoice, _) => invoice.invoice,
        measureFn: (Invoice invoice, _) => invoice.invoicevalue,
        colorFn: (Invoice invoice, _) =>
            charts.ColorUtil.fromDartColor(invoice.colorval),
        id: 'Invoice Status',
        data: invoiceData,
        labelAccessorFn: (Invoice row, _) => '${row.invoicevalue}',
      ),
    );

    var gstData = [
      GST('SGST', 25.00, kRecurringColor),
      GST('CGST', 35.00, kPaidColor),
      GST('IGST', 18.00, kUnpaidColor),
    ];

    _gstData.add(
      charts.Series(
        domainFn: (GST gst, _) => gst.type,
        measureFn: (GST gst, _) => gst.amount,
        colorFn: (GST gst, _) => charts.ColorUtil.fromDartColor(gst.color),
        id: 'GST',
        data: gstData,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (GST gst, _) => charts.ColorUtil.fromDartColor(gst.color),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _gstData = List<charts.Series<GST, String>>();
    _invoiceData = List<charts.Series<Invoice, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Dashboard',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.menu,
              size: kSize,
              press: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          action: [
            DefaultIconButton(
              icon: Icons.notifications_none,
              size: kSize,
              press: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => Notifications(),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: DefaultBottomCenterButton(
          label: 'Create Invoice',
          press: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddInvoice(),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawerEnableOpenDragGesture: false,
        drawer: DefaultDrawer(),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              HeaderTextContainer(
                align: Alignment.center,
                color: kAccentColor,
                child: HeaderText(
                  text: 'Invoice Status'.toUpperCase(),
                  size: kFontSize,
                  color: kPrimaryColor,
                  weight: FontWeight.bold,
                ),
              ),
              Container(
                height: 250.0,
                child: charts.PieChart(
                  _invoiceData,
                  animate: true,
                  animationDuration: Duration(seconds: 1),
                  behaviors: [
                    charts.DatumLegend(
                      // position: charts.BehaviorPosition.start,
                      outsideJustification:
                          charts.OutsideJustification.endDrawArea,
                      // horizontalFirst: true,
                      // desiredMaxRows: 2,
                      cellPadding: EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        bottom: 0.0,
                        top: kDefaultPadding,
                      ),
                      entryTextStyle: charts.TextStyleSpec(
                        // color: charts.MaterialPalette.purple.shadeDefault,
                        // fontFamily: 'Georgia',
                        fontSize: 16,
                      ),
                    )
                  ],
                  defaultRenderer: charts.ArcRendererConfig(
                    arcWidth: 50,
                    arcRendererDecorators: [
                      charts.ArcLabelDecorator(
                          labelPosition: charts.ArcLabelPosition.outside)
                    ],
                  ),
                ),
              ),
              HeaderTextContainer(
                align: Alignment.center,
                color: kAccentColor,
                child: HeaderText(
                  text: 'GST'.toUpperCase(),
                  size: kFontSize,
                  color: kPrimaryColor,
                  weight: FontWeight.bold,
                ),
              ),
              Container(
                height: 250.0,
                child: charts.BarChart(
                    _gstData,
                    animate: true,
                    animationDuration: Duration(seconds: 1),
                    barGroupingType: charts.BarGroupingType.groupedStacked,
                    // behaviors: [new charts.SeriesLegend()],
                    behaviors: [
                      charts.DatumLegend(
                        // position: charts.BehaviorPosition.start,
                        outsideJustification:
                            charts.OutsideJustification.endDrawArea,
                        // horizontalFirst: true,
                        // desiredMaxRows: 2,
                        cellPadding: EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                          bottom: 0.0,
                          top: kDefaultPadding,
                        ),
                        entryTextStyle: charts.TextStyleSpec(
                          // color: charts.MaterialPalette.purple.shadeDefault,
                          // fontFamily: 'Georgia',
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
              ),
              HeaderTextContainer(
                align: Alignment.center,
                color: kAccentColor,
                child: HeaderText(
                  text: 'Overdue Invoices'.toUpperCase(),
                  size: kFontSize,
                  color: kPrimaryColor,
                  weight: FontWeight.bold,
                ),
              ),
              DefaultCard(
                headerText1: 'Customer',
                headerText2: 'Amount',
                text1: 'Customer 1',
                text2: '67,000.00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
