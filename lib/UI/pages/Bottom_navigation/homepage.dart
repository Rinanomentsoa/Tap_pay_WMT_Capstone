import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/card/card_section.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/home_section.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/account_section.dart';
import 'package:tap_pay_app/UI/pages/Bottom_navigation/views/analysis/analysis_section.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal:5,
        ),
        child: FloatingActionButton(
            backgroundColor: Color(0xffdadee0),
            onPressed: () {
              Navigator.pushNamed(context, "/Scan");
            },
            child: SvgPicture.asset(ImageConstant.scanIcon)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeSection(),
          CardSection(),
          AnalysisSection(),
          AccountSection(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 2.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
                selectedItemColor: Color(0xFF3567C3),
                unselectedItemColor: Color(0xFF929494),
                showUnselectedLabels: true,
                selectedLabelStyle: const TextStyle(
                  color: Color(0xFF3567C3),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: SvgPicture.asset(ImageConstant.homeIcon,color: Color(
                        0xFFBDBDBE),),
                    activeIcon: SvgPicture.asset(
                        ImageConstant.homeIcon,
                        color: Color(0xFF3567C3),
                        height: 33,
                        width:33
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Card',
                    icon: CustomImageView(svgPath: ImageConstant.cardIcon,color: Color(
                        0xFFBDBDBE),),
                    activeIcon: SvgPicture.asset(
                        ImageConstant.cardIcon,
                        color: Color(0xFF3567C3),
                        height: 33,
                        width:33
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Analysis',
                    icon: CustomImageView(svgPath: ImageConstant.analysisIcon,color: Color(
                        0xFFBDBDBE),),
                    activeIcon: SvgPicture.asset(
                        ImageConstant.analysisIcon,
                        color: Color(0xFF3567C3),
                        height: 33,
                        width:33
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Account',
                    icon: CustomImageView(svgPath: ImageConstant.accountIcon,color: Color(
                        0xFFBDBDBE),),
                    activeIcon: SvgPicture.asset(
                        ImageConstant.accountIcon,
                        color: Color(0xFF3567C3),
                        height: 33,
                        width:33
                    ),
                  ),
                ]),
          ),
        ),
      )
    );
  }
}
