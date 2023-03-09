import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_pay_app/core/app_export.dart';
import '../../../theme/app_style.dart';
import '../../widgets/custom_button.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/Onboard_two.png'),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 38,
                        ),
                        child: Text(
                          "Hassle free payment".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium28,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 5,
                        ),
                        child: Text(
                          "Make easy payment without\n the headache of internet issues."
                              .tr,
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                top: 0,
                right: 10,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/Signup");
                    },
                    child: CustomButton(
                      height: getVerticalSize(
                        44,
                      ),
                      text: "Join Tap’Pay".tr,
                      margin: getMargin(
                        right: 12,
                      ),
                      shape: ButtonShape.RoundedBorder8,
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: CustomButton(
                      height: getVerticalSize(
                        44,
                      ),
                      text: "Login".tr,
                      margin: getMargin(
                        left: 12,
                      ),
                      variant: ButtonVariant.OutlineIndigo500,
                      shape: ButtonShape.RoundedBorder8,
                      fontStyle: ButtonFontStyle.PoppinsMedium14Indigo500,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
