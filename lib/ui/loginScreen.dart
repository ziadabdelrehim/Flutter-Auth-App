import 'package:fashion_new/customWid/signInCard.dart';
import 'package:fashion_new/customWid/ConnectWith.dart';
import 'package:fashion_new/ui/signUpScreen.dart';
import 'package:fashion_new/ui/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.whiteColor,
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("FAS",
                          style: MyText.textStyleBold.copyWith(
                              fontSize: 40,
                              color: MyColors.darkGrey,
                              fontWeight: FontWeight.w900)),
                      Text("HION",
                          style: MyText.textStyleBold.copyWith(
                              fontSize: 40,
                              color: MyColors.black,
                              fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                MySignIn(signUpTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MySingUp()),
                  );
                }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ConnectWith(),
              ]),
            )));
  }
}
