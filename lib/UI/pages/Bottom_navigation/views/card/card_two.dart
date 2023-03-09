import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/image_constant.dart';
import '../../../../widgets/custom_icon_button.dart';

class CardTwo extends StatefulWidget {
  const CardTwo({Key? key}) : super(key: key);

  @override
  State<CardTwo> createState() => _CardTwoState();
}

class _CardTwoState extends State<CardTwo> {
  @override
  Widget build(BuildContext context) {
    return analysisWidgetTwo();
  }
}

Widget analysisWidgetTwo() {
  return ListView(
    children: [
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
                        child: Text("Tap'Pay", style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'inter',
                            fontSize: 13,
                            fontWeight: FontWeight.w600),),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Virtual Card', style: TextStyle(
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
      Padding(padding: EdgeInsets.only(top:25),
      child: Column(
        children: [
          SettingsBox('assets/images/codepin.png', 'Change PIN code'),
          SettingsBox('assets/images/security.png', 'Security settings'),
          SettingsBox('assets/images/cardlimit.png', 'Card limit'),
          SettingsBox('assets/images/lockcard.png', 'Lock card'),
        ],
      ),)
    ],
  );
}

Widget SettingsBox(
    String path,
    String title,) {
  return GestureDetector(
    onTap: (){},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFD5DAE1),
          borderRadius: BorderRadius.circular(7)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width:8,),
                  Image.asset(path,height:30,),
                  SizedBox(width:15,),
                  Text(title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined, size:12,)
            ],
          ),
        ),
      ),
    ),
  );
}
