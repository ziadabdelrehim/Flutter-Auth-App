import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColors {
  static Color whiteColor = Colors.white;
  static Color darkGrey = Color(0xffa0a0a0);
  static Color black = Color(0xff000000);
}

class MyText {
  static TextStyle textStyleNormal = TextStyle(
      decorationColor: MyColors.darkGrey,
      color: MyColors.black,
      fontFamily: "YuGothicUI",
      fontWeight: FontWeight.w400,
      fontSize: 15);

  static TextStyle textStyleSemiBold = TextStyle(
      decorationColor: MyColors.darkGrey,
      color: MyColors.black,
      fontFamily: "YuGothicUI",
      fontWeight: FontWeight.w600,
      fontSize: 15);
  static TextStyle textStyleBold = TextStyle(
      decorationColor: MyColors.darkGrey,
      color: MyColors.black,
      fontFamily: "YuGothicUI",
      fontWeight: FontWeight.w800,
      fontSize: 15);

  static TextStyle textStyleExtraBold = TextStyle(
      decorationColor: MyColors.darkGrey,
      color: MyColors.black,
      fontFamily: "YuGothicUI",
      fontWeight: FontWeight.w900,
      fontSize: 15);

  static TextStyle textStyleSemiLight = TextStyle(
      decorationColor: MyColors.darkGrey,
      color: MyColors.black,
      fontFamily: "YuGothicUI",
      fontWeight: FontWeight.w300,
      fontSize: 15);
}
