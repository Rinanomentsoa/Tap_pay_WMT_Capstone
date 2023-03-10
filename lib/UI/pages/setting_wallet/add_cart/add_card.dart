import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_pay_app/core/app_export.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Add Card',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: SvgPicture.asset(
                    ImageConstant.scanIcon,
                    color: Color(0xff4f4d4d),
                    height: 65,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(75, 10, 75, 30),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Scan");
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ))),
                  child: const Text(
                    'Scan card',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  '---------------OR---------------',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    fontFamily: 'Poppins',
                  ),
                ),
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
              contentField('Name of the Card', 220, TextInputType.text),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentField('Expiry date', 200, TextInputType.datetime),
                  contentField('CVV', 70, TextInputType.number),
                ],
              ),

              contentField('Card number', 230, TextInputType.number),
              // ADD CARD BUTTON
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
                    'Add card',
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

Widget contentField(String FieldTitle, double width, TextInputType type_input) {
  return Container(
    width: width,
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
          keyboardType: type_input,
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
