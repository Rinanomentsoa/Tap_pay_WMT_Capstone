import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tap_pay_app/core/utils/image_constant.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

class SettingWallets extends StatefulWidget {
  const SettingWallets({Key? key}) : super(key: key);

  @override
  State<SettingWallets> createState() => _SettingWalletsState();
}

class _SettingWalletsState extends State<SettingWallets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),

          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, "/Home");
                  }, child: Text('Skip',style:TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontFamily: 'Inter',
                  ) ,))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 38,
                      ),
                      child: Text(
                        "Set up wallet".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF3567C3),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Create ways for you to easily fund your Tap’pay wallet."
                            .tr,
                        maxLines: 4,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           BoxButton("/AddCard",'Create Tap’pay \n virtual card', Color(0xFFFFF3CD), ImageConstant.onePic),
                            BoxButton("/RequestUnitCard",'Request Tap’pay \n unit card', Color(0xFFE0EBFF), ImageConstant.twoPic),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoxButton("/Card",'Connect \n credit cards', Color(0xFFE0EBFF), ImageConstant.threePic),
                            BoxButton("/ConnectAccounts",'Connect \n bank accounts', Color(0xFFFFF3CD), ImageConstant.fourPic),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }

  Widget BoxButton(
      String route,
      String textContent, Color boxColor,String assetName) {
    return InkWell(
        splashColor: boxColor,
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
            height: 155,
            width: 145,
            decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF2D333A).withOpacity(0.2),
                      blurRadius: 4,
                      spreadRadius: 0.1,
                      offset: Offset(2, 2))
                ]),
            child: Padding(
              padding: EdgeInsets.only(top: 20,bottom: 8)
              ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(assetName),
                  Text(
                    textContent,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )));
  }
}

