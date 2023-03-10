import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    //final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          //TOP SECTION
          Container(
            height: deviceHeight * 0.36525,
            color: Colors.black54,
            child: Column(
              children: [
                //HEADER
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  // defining Left, Right, Top Bottom padding
                  child: Row(
                    // Horizontal Place of a row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // setting space between the contents of the container in a proportional manner
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 9, 12, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // align it to the end of the screen
                          children: [
                            Text('Welcome back',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.5,
                                )),
                            Text('Olabisi Ayokunle ',
                                style: TextStyle(
                                    fontFamily: 'Solway',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      //NOTIFICATION
                      CustomIconButton(
                        height: 45,
                        width: 45,
                        variant: IconButtonVariant.FillWhiteA700,
                        shape: IconButtonShape.CircleBorder34,
                        padding: IconButtonPadding.PaddingAll7,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgNotification,
                          height: 37,
                          width: 37,
                        ),
                      ),
                    ],
                  ),
                ),
                //END OF HEADER
                Container(
                    height: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(30, 68, 30, 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0XFF3567C3),
                    ),
                    child: Column(
                      children: [
                        //HEADER
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Virtual card',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 37, 35, 0),
                          child: Container(
                              height: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                color: Color(0xFFD7E0E3),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: EdgeInsets.all(14),
                                          child: Icon(
                                            Icons.visibility_outlined,
                                            size: 15,
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 41),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Balance |',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins'),
                                        ),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Text(
                                          '¥100,000',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                      //END OF HEADER
                    )),
              ],
            ),
          ),
          //END OF TOP SECTION
          //INNER SQUARE

          Padding(
            padding: const EdgeInsets.fromLTRB(40,30,40,10),
            child: Column(
              children: [
                //SERVICES
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        'Services',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    //LIST OF BUTTONS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ServicesButtons('assets/images/imageb.png', 'Send'),
                        ServicesButtons('assets/images/imagea.png', 'Request'),
                        ServicesButtons('assets/images/imagec.png', 'Top up'),
                        ServicesButtons(
                            'assets/images/imaged.png', 'Pay Bills'),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFF3CD),
                      borderRadius: BorderRadius.circular(8)
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                    children: [
                        Text(
                          'Let’s help get you started',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Let’s set up your e-wallet to get instant access to your funds, make transactions with ease.See all  your transaction history to keep track of your income and expenses.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Inter",
                            color:Colors.black87,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(30, 15, 30,0),
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/SettingWallet");
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ))),
                            child: const Text(
                              'Find Wallet',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),

                    ],
                  ),
                      )),
                ),

                //TOP LIST
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        bottom: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Top, Feb 22',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'All transactions',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoxList(
                            'assets/images/firstbank.png',
                            'First Bank',
                            'Yesterday,17th Feb',
                            '50,000',
                            Icons.arrow_downward,
                            Colors.green,
                            Colors.green),
                        BoxList(
                            'assets/images/img_netflixjpeg.png',
                            'Netflix',
                            'Saturday,16th Feb',
                            '10,000',
                            Icons.arrow_upward,
                            Colors.redAccent,
                            Colors.redAccent),
                        BoxList(
                            'assets/images/firstbank.png',
                            'First Bank',
                            'Sunday,07th Feb',
                            '31,000',
                            Icons.arrow_downward,
                            Colors.green,
                            Colors.green),
                        BoxList(
                            'assets/images/payday.png',
                            'PayDay',
                            'Friday,5th Feb',
                            '23,000',
                            Icons.arrow_downward,
                            Colors.green,
                            Colors.green),
                        BoxList(
                            'assets/images/spotify.png',
                            'PayDay',
                            'Wednesday,3th Feb',
                            '8,700',
                            Icons.arrow_downward,
                            Colors.redAccent,
                            Colors.redAccent),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

Widget ServicesButtons(
  String image_path,
  String title,
) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: [
        CustomIconButton(
          height: 65,
          width: 65,
          variant: IconButtonVariant.FillWhiteA700,
          shape: IconButtonShape.CircleBorder34,
          padding: IconButtonPadding.PaddingAll7,
          child: Image.asset(image_path),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(title),
        ),
      ],
    ),
  );
}

Widget BoxList(
  String imagepath,
  String title,
  String date,
  String amount,
  IconData icon,
  Color color,
  Color textcolor,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Image.asset(
          imagepath,
          height: 40,
          width: 40,
        ),
        Container(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            Text(
              date,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Spacer(
          flex: 4,
        ),
        Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              amount,
              style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),
            )
          ],
        )
      ],
    ),
  );
}
