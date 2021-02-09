import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/products/addProduct.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomCenterButton.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultSearchBox.dart';

class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Products',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.menu,
              size: kSize,
              press: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        floatingActionButton: DefaultBottomCenterButton(
          label: 'Add Product',
          press: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddProduct(),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawerEnableOpenDragGesture: false,
        drawer: DefaultDrawer(),
        body: Column(
          children: [
            DefaultSearchBox(),
          ],
        ),
      ),
    );
  }
}
