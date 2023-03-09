import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_pay_app/core/app_export.dart';

class RequestUnitCard extends StatefulWidget {
  const RequestUnitCard({Key? key}) : super(key: key);

  @override
  State<RequestUnitCard> createState() => _RequestUnitCardState();
}

class _RequestUnitCardState extends State<RequestUnitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 35, 15, 25),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Request Card',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
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
              Padding(
                padding: EdgeInsets.fromLTRB(11, 18, 15, 0),
                child: Text(
                  'Tap’Pay Unit Card',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                child: Text(
                  'Physical unit card for easy and flexible payments',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const InputFields(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Home");
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ))),
                  child: const Text(
                    'Request card',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// this class is a combination of all TextField elements
class InputFields extends StatefulWidget {
  const InputFields({Key? key}) : super(key: key);

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  bool passwordObscured = true;
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
        // defining Left, Right, Top Bottom padding
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            // align it to the end of the screen
            children: [
              //State
              contentField('State'),
              //LGA
              contentField('LGA'),
              //Address
              contentField('Address'),
            ]));
  }
}

Widget contentField(
  String FieldTitle,
) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            FieldTitle,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Colors.black87,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Color(0XFF3567C3)))),
        )
      ],
    ),
  );
}
