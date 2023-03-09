
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 75, 15, 25),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(11, 18, 15,0),
                child: Text(
                  'OTP verification',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color(0XFF3567C3),
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                child: Text(
                  'Please enter the verification code sent to your number.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              //PIN
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical:35),
                child: PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 5,
                  onChanged: (value) {
                    print (value);
                  },
                  pinTheme: PinTheme(
                      fieldHeight: 57,
                      fieldWidth: 55,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      inactiveColor: Color(0xff4a4c4f),
                      inactiveFillColor: Color(0xffdbe3e8),
                      activeColor: Color(0xff3567C3),
                      activeFillColor: Color(0xffb6e1f1)

                  ),),
              ),

              TextButton(
                  onPressed: () {
                  },
                  child: const Text(
                    "Resend code",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Color(0XFF3567C3)),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0,70,0, 10),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/CreatePin");
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ))),
                  child: const Text(
                    'Continue',
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

