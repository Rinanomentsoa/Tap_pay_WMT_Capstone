
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_pay_app/core/app_export.dart';
import '../../../theme/app_style.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(0,0,0, 25),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/Onboard_one.png',),

            Padding(
              padding: EdgeInsets.fromLTRB(0,5,0, 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 38,
                        ),
                        child: Text(
                          "Quick & easy e-wallet".tr,
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
                          "No back and forth, easily manage and \n link your finances faster in one app."
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
            Padding(padding: EdgeInsets.fromLTRB(10,0,10,5),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Signin");
                    },
                    child:
                    Text('Skip', style: AppStyle.txtInterSemiBold12)),
                FloatingActionButton(
                  backgroundColor: Color(0xFF3567C3),
                  onPressed: () {
                    Navigator.pushNamed(context, "/OnboardingP2");
                  },
                  child: Icon(Icons.arrow_forward_outlined),
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
