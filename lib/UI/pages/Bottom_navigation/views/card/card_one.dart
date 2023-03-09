import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/image_constant.dart';
import '../../../../widgets/custom_icon_button.dart';
class CardOne extends StatefulWidget {
  const CardOne({Key? key}) : super(key: key);

  @override
  State<CardOne> createState() => _CardOneState();
}

class _CardOneState extends State<CardOne> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //ONE
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 9, 35, 10),
          child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff3c3d41),
                      Color(0xff182c4b),
                      Color(0xff05132f),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Tap'Pay",style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'inter',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text('Virtual Card',style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'inter',
                                fontSize: 10,
                                fontWeight: FontWeight.w200),)),
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/icon.png',
                        height: 35,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(ImageConstant.masterCardIcon),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        //TWO
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 9, 35, 10),
          child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff7c8cb0),
                      Color(0xff28519d),
                      Color(0xff143677),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.asset(
                            ImageConstant.tapPayWhiteMainIcon,
                            height: 16,
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4),
                                    child: Icon(
                                      Icons.ads_click,
                                      color: Colors.white,
                                      size: 15,
                                    )),
                                Text('Tap here',style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'inter',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200),),
                              ],
                            )),
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/icon.png',
                        height: 25,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Olabisi Ayokunle',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Unit Card',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        //THREE
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 9, 35, 10),
          child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffb1c0e7),
                      Color(0xff3c70ce),
                      Color(0xff3567C3),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8),
                          child: Text('First Bank',style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                    Center(
                      child: SvgPicture.asset(ImageConstant.masterCardIcon,height:50),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '9907689099978',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          letterSpacing: 1.75,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              )),
        ),

      ],
    );
  }
}
