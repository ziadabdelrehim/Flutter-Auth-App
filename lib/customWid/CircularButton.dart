import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../ui/style.dart';

class MyCircularButton extends StatelessWidget {
  String buttonText;
  double height;
  double width;

  MyCircularButton(
      {required this.buttonText, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30),
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
            color: MyColors.black, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          this.buttonText,
          style: MyText.textStyleBold.copyWith(color: MyColors.whiteColor),
        )));
  }
}
