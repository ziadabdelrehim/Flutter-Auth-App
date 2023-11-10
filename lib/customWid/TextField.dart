import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../ui/style.dart';

class MyTextField extends StatefulWidget {
  TextInputType textInputType;
  TextInputAction textInputAction;
  String hintText;
  bool secure;
  TextEditingController textEditingController;

  MyTextField(
      {required this.textInputType,
      required this.textInputAction,
      required this.hintText,
      required this.secure,
      required this.textEditingController});
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      cursorColor: MyColors.black,
      keyboardType: widget.textInputType,
      obscureText: widget.secure,
      textInputAction: widget.textInputAction,
      style: MyText.textStyleNormal,
      decoration: InputDecoration(
          hintText: widget.hintText,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyColors.black))),
    );
  }
}
