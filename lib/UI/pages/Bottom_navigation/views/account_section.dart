import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class AccountSection extends StatefulWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  State<AccountSection> createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4e9fa),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        //MAIN COLUMN
        child: ListView(
          children: [
            //HEADER
            Center(
              child: Column(
                children: [
                  Text(
                    'My Account',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  //AVATAR
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomIconButton(
                      height: 95,
                      width: 95,
                      variant: IconButtonVariant.FillWhiteA700,
                      shape: IconButtonShape.CircleBorder34,
                      padding: IconButtonPadding.PaddingAll7,
                      child: CustomImageView(
                        svgPath: ImageConstant.accountIcon,
                        height: 77,
                        width: 77,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Olabisi Ayokunle',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //PROFILE
            CustomTitle('Profile'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton('Edit profile'),
                    Icon(Icons.edit_outlined)
                  ],
                ),
                CustomTextButton('Notification'),
                CustomTextButton('Enable biometric'),
              ],
            ),
            //SECURITY
            CustomTitle('Security'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextButton('Change Passcode'),
                CustomTextButton('Login and security'),
                CustomTextButton('Confidentiality'),
              ],
            ),
            //ABOUT US
            CustomTitle('About us'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextButton('Privacy policy'),
                CustomTextButton('Terms and Conditions'),
                CustomTextButton('Contact us'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

Widget CustomTextButton(
  String Title,
) {
  return TextButton(
      onPressed: () {},
      child: Text(
        Title,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
          fontFamily: 'Inter',
        ),
      ));
}

Widget CustomTitle(
  String BigTitle,
) {
  return Text(
    BigTitle,
    textAlign: TextAlign.start,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: Colors.black87,
      fontFamily: 'Poppins',
    ),
  );
}
