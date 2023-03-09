import 'package:flutter/material.dart';
import '../../../../widgets/custom_icon_button.dart';
class AnalysisTwo extends StatefulWidget {
  const AnalysisTwo({Key? key}) : super(key: key);

  @override
  State<AnalysisTwo> createState() => _AnalysisTwoState();
}

class _AnalysisTwoState extends State<AnalysisTwo> {
  @override
  Widget build(BuildContext context) {
    return analysisWidgetTwo();
  }
}

  Widget analysisWidgetTwo() {
    return ListView(
      children: [
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37, vertical: 10),
                  //TITLE
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Overview',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Expenses, February 2023',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'Day',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Icon(Icons.arrow_drop_down_sharp),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Balance',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    '¥100,000',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 37, 35, 0),
                  child: Container(
                      height: 140,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Color(0xFF3567C3),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 21, vertical: 12),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Spend today',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '¥8,400',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  '8% decrease than yesterday',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
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
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Column(
            children: [
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
                          'Categories',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                          ),
                        ),
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
                          Icons.arrow_upward,
                          Colors.red,
                          Colors.red),
                      BoxList(
                          'assets/images/img_netflixjpeg.png',
                          'Netflix',
                          'Saturday,16th Feb',
                          '10,000',
                          Icons.arrow_upward,
                          Colors.red,
                          Colors.red),
                      BoxList(
                          'assets/images/firstbank.png',
                          'First Bank',
                          'Sunday,07th Feb',
                          '31,000',
                          Icons.arrow_upward,
                          Colors.red,
                          Colors.red),
                      BoxList(
                          'assets/images/payday.png',
                          'PayDay',
                          'Friday,5th Feb',
                          '23,000',
                          Icons.arrow_upward,
                          Colors.red,
                          Colors.red),
                      BoxList(
                          'assets/images/spotify.png',
                          'PayDay',
                          'Wednesday,3th Feb',
                          '8,700',
                          Icons.arrow_upward,
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
    );
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
