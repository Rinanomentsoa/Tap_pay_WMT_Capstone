import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tap_pay_app/UI/pages/onboarding/onboarding_page1.dart';
import 'package:tap_pay_app/UI/pages/onboarding/onboarding_page2.dart';
import 'package:tap_pay_app/UI/pages/signup_slider/create_pin_screen.dart';
import 'package:tap_pay_app/UI/pages/signup_slider/sign_up_screen.dart';
import 'package:tap_pay_app/UI/pages/signup_slider/verify_number_screen.dart';
class SignupSliderScreen extends StatefulWidget {
  const SignupSliderScreen({Key? key}) : super(key: key);

  @override
  State<SignupSliderScreen> createState() => _SignupSliderScreenState();
}

class _SignupSliderScreenState extends State<SignupSliderScreen> {
  PageController _controller= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              SignUpScreen(),
              VerifyScreen(),
              CreatePinCode()

            ],
          ),
          // Dot indicators
          Container(
              alignment: Alignment(0, -0.85),
              child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
              effect: SlideEffect(
                  spacing:  5.0,
                  radius:  3.0,
                  dotWidth:  115.0,
                  dotHeight:  10.0,
                  //paintStyle:  PaintingStyle.stroke,
                  //strokeWidth:  1.5,
                  dotColor:  Color(0xFFCFCFCF),
                  activeDotColor:  Color(0xFF3567C3)
              ),))
        ],
      )
    );
  }
}
