import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tap_pay_app/UI/pages/onboarding/onboarding_page1.dart';
import 'package:tap_pay_app/UI/pages/onboarding/onboarding_page2.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnboardingPageOne(),
              OnboardingPageTwo()

            ],
          ),
          // Dot indicators
          Container(
              alignment: Alignment(0, 0.76),
              child: SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0xFF0C48B7),
                dotHeight: 5,
                dotWidth: 28,
              ),))
        ],
      )
    );
  }
}
