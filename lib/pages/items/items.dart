import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class Items extends StatefulWidget {
  Items({Key key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        height: kToolbarHeight,
        title: 'Add Item',
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
                  Text('Product name TextField'),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'Price',
                    type: TextInputType.phone,
                    validator: validateNumber,
                  ),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'Quantity',
                    type: TextInputType.phone,
                    validator: validateNumber,
                  ),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'HSN code',
                    type: TextInputType.text,
                  ),
                  kSizedBox,
                  DefaultTextFormField(
                    hintText: 'Details',
                    type: TextInputType.text,
                  ),
                  kSizedBox,
                  DefaultButton(
                    btnText: 'Add Item',
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
