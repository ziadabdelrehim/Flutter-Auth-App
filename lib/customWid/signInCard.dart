import 'package:fashion_new/customWid/CircularButton.dart';
import 'package:fashion_new/customWid/TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../ui/style.dart';

TextEditingController EmailEditingController = TextEditingController();
TextEditingController PasswordEditingController = TextEditingController();

class MySignIn extends StatelessWidget {
  Function() signUpTap;
  MySignIn({required this.signUpTap});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign in",
              style: MyText.textStyleExtraBold
                  .copyWith(color: MyColors.black, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            MyTextField(
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              hintText: "Email",
              secure: false,
              textEditingController: EmailEditingController,
            ),
            MyTextField(
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              hintText: "Password",
              secure: true,
              textEditingController: PasswordEditingController,
            ),
            MyCircularButton(
                buttonText: "SIGN IN",
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text("Forget password?",
                    style: MyText.textStyleNormal
                        .copyWith(color: MyColors.darkGrey)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: MyText.textStyleNormal
                      .copyWith(color: MyColors.darkGrey, fontSize: 14),
                ),
                InkWell(
                  onTap: signUpTap,
                  child: Text("Sign up",
                      style: MyText.textStyleExtraBold
                          .copyWith(color: MyColors.black, fontSize: 15)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
