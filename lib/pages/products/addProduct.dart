import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class AddProduct extends StatefulWidget {
  AddProduct({Key key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'New Product',
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
                      hintText: 'Product name',
                      type: TextInputType.text,
                      validator: validateText,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Price',
                      type: TextInputType.phone,
                      validator: validateNumber,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'HSN Code',
                      type: TextInputType.phone,
                    ),
                    kSizedBox,
                    DefaultTextFormField(
                      hintText: 'Product details',
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
