import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomSheet.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultContainer.dart';
import 'package:yfobs_app/reusable/defaultDatePicker.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultRadioButton.dart';
import 'package:yfobs_app/reusable/defaultTextFormField.dart';

class EditBusinessInfo extends StatefulWidget {
  EditBusinessInfo({Key key}) : super(key: key);

  @override
  _EditBusinessInfoState createState() => _EditBusinessInfoState();
}

class _EditBusinessInfoState extends State<EditBusinessInfo> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final state = TextEditingController();
  final category = TextEditingController();
  int value;

  File _image;

  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File _image = File(pickedFile.path);
    }
  }

  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File _image = File(pickedFile.path);
    }
  }

  void _showPicker(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      _getFromGallery();
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    _getFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Edit Business',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.arrow_back_ios,
              size: kSize,
              press: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              DefaultContainer(
                top: kMorePadding,
                bottom: kMorePadding,
                child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      Text('Image'),
                      // GestureDetector(
                      //   onTap: () {
                      //     _showPicker(context);
                      //   },
                      //   child: Container(
                      //     height: 80.0,
                      //     width: 80.0,
                      //     margin: EdgeInsets.only(
                      //       right: kDefaultPadding,
                      //     ),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(100.0),
                      //       image: DecorationImage(
                      //         image: _image == null ? Image.file(_image) : AssetImage(placeholders),
                      //         // AssetImage(
                      //         //     _image == null ? placeholders : _image),
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      GestureDetector(
                        onTap: () {
                          _showPicker(context);
                        },
                        child: _image == null
                            ? Image(image: AssetImage(placeholders))
                            : Image.file(_image),
                      ),

                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Business name',
                        type: TextInputType.text,
                        validator: validateNumber,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Title',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Licence number',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      DefaultRadioButton(
                        headText: 'Is your business registered for GST?',
                        radio1: 'Yes',
                        radio2: 'No',
                        value: value,
                        change: (i) => setState(() => value = i),
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'GST number',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      DefaultDatePicker(
                          // hintText: 'Select date'
                          ),
                      kSizedBox,
                      GestureDetector(
                        onTap: () {
                          void defaultDropDown(context) {
                            showModalBottomSheet(
                              backgroundColor: kDarkColor,
                              context: context,
                              isScrollControlled: true,
                              // clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.vertical(
                              //       top: Radius.circular(kMorePadding)),
                              // ),
                              builder: (BuildContext context) {
                                return DefaultDropDown(
                                  items: 50,
                                  // text: menuLabels[10],
                                );
                              },
                            );
                          }

                          defaultDropDown(context);
                        },
                        child: DefaultTextFormField(
                          hintText: 'State',
                          enable: false,
                          controller: state,
                          validator: validateDropdown,
                          suffix: Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'City',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      GestureDetector(
                        onTap: () {
                          void defaultDropDown(context) {
                            showModalBottomSheet(
                              backgroundColor: kDarkColor,
                              context: context,
                              isScrollControlled: true,
                              // clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.vertical(
                              //       top: Radius.circular(kMorePadding)),
                              // ),
                              builder: (BuildContext context) {
                                return DefaultDropDown(
                                  items: 50,
                                  // text: menuLabels[10],
                                );
                              },
                            );
                          }

                          defaultDropDown(context);
                        },
                        child: DefaultTextFormField(
                          hintText: 'Category',
                          enable: false,
                          controller: category,
                          validator: validateDropdown,
                          suffix: Icon(
                            Icons.arrow_drop_down,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Address',
                        type: TextInputType.text,
                      ),
                      kSizedBox,
                      DefaultTextFormField(
                        hintText: 'Post code',
                        type: TextInputType.phone,
                        length: 6,
                        counter: '',
                        validator: validatePostCode,
                      ),
                      kSizedBox,
                      DefaultButton(
                        btnText: 'Submit',
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
