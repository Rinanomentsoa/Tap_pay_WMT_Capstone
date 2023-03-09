import 'package:flutter/material.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/homepage.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/card/card_section.dart';
import 'package:tap_pay_app/UI/pages/paiement.dart';
import 'package:tap_pay_app/UI/pages/setting_wallet/add_cart/add_card.dart';
import 'package:tap_pay_app/UI/pages/setting_wallet/add_cart/scan_screen.dart';
import 'package:tap_pay_app/UI/pages/setting_wallet/connect_account/connect_account.dart';
import 'package:tap_pay_app/UI/pages/setting_wallet/request_unit_card/request_unit_card.dart';
import 'package:tap_pay_app/UI/pages/setting_wallet/setting_wallet.dart';
import 'package:tap_pay_app/UI/pages/signup_slider/create_pin_screen.dart';
import 'package:tap_pay_app/UI/pages/signup_slider/slider_screen.dart';
import 'package:tap_pay_app/UI/pages/signup_slider/verify_number_screen.dart';
import 'package:tap_pay_app/UI/pages/signin/sign_in_screen.dart';
import 'package:tap_pay_app/UI/pages/welcoming/welcoming_screen.dart';

import 'UI/pages/onboarding/onboarding_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  Color defaultColor = Color(0XFF3567C3);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/Onboarding":(context)=> Onboarding(),
        "/Signup":(context)=> SignupSliderScreen(),
        "/Signin":(context)=> SignInScreen(),
        "/Verify":(context)=> VerifyScreen(),
        "/CreatePin":(context)=> CreatePinCode(),
        "/Welcome":(context)=> WelcomingScreen(),
        "/Home":(context)=> HomePage(),
        "/SettingWallet":(context)=> SettingWallets(),
        "/RequestUnitCard":(context)=> RequestUnitCard(),
        "/ConnectAccounts":(context)=> ConnectAccount(),
        "/AddCard":(context)=> AddCard(),
        "/Paiement":(context)=> PaiementScreen(),
        "/Scan":(context)=> ScanPage(),
        "/Card":(context)=> CardSection(),

      },
      debugShowCheckedModeBanner: false,
      initialRoute: "/Onboarding",
      theme: ThemeData(
        primaryColor: Color(0XFF3567C3),
        primarySwatch: Colors.indigo,
      ),
    );
  }
}