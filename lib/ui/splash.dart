import 'dart:async';

import 'package:fashion_new/ui/loginScreen.dart';
import 'package:fashion_new/ui/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "FAS",
              style: TextStyle(
                  fontFamily: "YuGothicUI",
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
                  color: MyColors.darkGrey),
            ),
            Text(
              "HION",
              style: TextStyle(
                  fontFamily: "YuGothicUI",
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
                  color: MyColors.black),
            ),
          ]),
        ),
      ),
    );
  }
}
