import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultTextFormField extends StatelessWidget {
  final TextInputType type;
  final int length;
  final validator, counter, enable, controller, autofocus;
  final Function save;
  final String hintText;
  final Widget prefix, suffix;
  const DefaultTextFormField({
    Key key,
    this.type,
    this.length,
    this.validator,
    this.save,
    this.hintText,
    this.prefix,
    this.counter,
    this.suffix,
    this.enable, this.controller, this.autofocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: autofocus,
      // textAlign: TextAlign.center,
      keyboardType: type,
      maxLength: length,
      validator: validator,
      onSaved: save,
      cursorColor: kPrimaryColor,
      textInputAction: TextInputAction.next,
      enabled: enable,
      controller: controller,
      // enableSuggestions: true,
      decoration: InputDecoration(
        counterText: counter,
        suffixIcon: suffix,
        prefixIcon: prefix,
        contentPadding: EdgeInsets.only(
          top: kDefaultPadding,
          bottom: kDefaultPadding,
          left: kMorePadding,
          right: kMorePadding,
        ),
        hintText: hintText,
        hintStyle: kHintTextStyle,
        filled: true,
        fillColor: kAccentColor,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kShape),
          borderSide: BorderSide(color: kAccentColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kShape),
          borderSide: BorderSide(
            color: kAccentColor,
            width: 10.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kShape),
          borderSide: BorderSide(
            color: kAccentColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(kShape),
          borderSide: BorderSide(
            color: kAccentColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kShape),
          borderSide: BorderSide(
            color: kAccentColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kShape),
          borderSide: BorderSide(
            color: kAccentColor,
          ),
        ),
        // errorStyle: TextStyle(
        //   fontSize: 22.0,
        //   color: kDarkColor,
        //   height: 2.0,
        // ),
      ),
    );
  }
}
