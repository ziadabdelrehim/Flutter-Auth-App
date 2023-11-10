import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui/style.dart';

class ConnectWith extends StatelessWidget {
  const ConnectWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Text("Or connect with",
            style: MyText.textStyleNormal.copyWith(color: MyColors.darkGrey)),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(
                  color: MyColors.black,
                  width: 2.0,
                ),
              ),
              child: Icon(
                FontAwesomeIcons.google,
                color: MyColors.black,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(
                  color: MyColors.black,
                  width: 2.0,
                ),
              ),
              child: Icon(
                FontAwesomeIcons.facebookF,
                color: MyColors.black,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: MyColors.black,
                    width: 2.0,
                  ),
                ),
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: MyColors.black,
                )),
          ],
        ),
      ]),
    );
  }
}
