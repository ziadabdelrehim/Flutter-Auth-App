import 'package:fashion_new/customWid/CircularButton.dart';
import 'package:fashion_new/customWid/ConnectWith.dart';
import 'package:fashion_new/customWid/TextField.dart';
import 'package:fashion_new/ui/loginScreen.dart';
import 'package:fashion_new/ui/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySingUp extends StatefulWidget {
  const MySingUp({Key? key}) : super(key: key);

  @override
  State<MySingUp> createState() => _MySingUpState();
}

TextEditingController NameEditingController = TextEditingController();
TextEditingController EmailEditingController = TextEditingController();
TextEditingController PasswordEditingController = TextEditingController();
TextEditingController ConfirmPasswordEditingController =
    TextEditingController();
TextEditingController PhoneEditingController = TextEditingController();

class _MySingUpState extends State<MySingUp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          child: Column(children: [
            Row(
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
                        fontWeight: FontWeight.w900))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create an account ",
                    style: MyText.textStyleExtraBold
                        .copyWith(color: MyColors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  MyTextField(
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: "Username",
                      secure: false,
                      textEditingController: NameEditingController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyTextField(
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      hintText: "Email",
                      secure: false,
                      textEditingController: EmailEditingController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyTextField(
                      textInputType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      hintText: "Password",
                      secure: true,
                      textEditingController: PasswordEditingController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyTextField(
                      textInputType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      hintText: "Confirm Password",
                      secure: true,
                      textEditingController: ConfirmPasswordEditingController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyTextField(
                      textInputType: TextInputType.phone,
                      textInputAction: TextInputAction.done,
                      hintText: "Phone Number",
                      secure: false,
                      textEditingController: PhoneEditingController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MyCircularButton(
                      buttonText: "SIGN UP",
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9),
                  ConnectWith(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: MyText.textStyleNormal
                            .copyWith(color: MyColors.darkGrey, fontSize: 14),
                      ),
                      InkWell(
                        onTap: (() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyLogin()),
                          );
                        }),
                        child: Text("Sign in",
                            style: MyText.textStyleExtraBold
                                .copyWith(color: MyColors.black, fontSize: 15)),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
