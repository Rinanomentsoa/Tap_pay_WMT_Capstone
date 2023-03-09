
import 'package:flutter/material.dart';

import '../../../theme/app_style.dart';

class WelcomingScreen extends StatefulWidget {
  const WelcomingScreen({Key? key}) : super(key: key);

  @override
  State<WelcomingScreen> createState() => _WelcomingScreenState();
}

class _WelcomingScreenState extends State<WelcomingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(11, 18, 15,5),
                child: Text(
                  'Welcome to Tap’Pay',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color(0XFF3567C3),
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 12, 10,80),
                child: Text(
                  'We are glad to have you join the best e-wallet app. Start banking, account number has been provided below.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,20, 0,10),
                  child: Text("8089010879",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                        fontSize: 40,
                        fontFamily: 'Poppins',
                        color: Colors.black87),
                  ),
                ),
              ),

              Center(
                child: Text("Your account number is your phone number",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: Colors.black54),
                    ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0,100,0, 10),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Signin");
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ))),
                  child: const Text(
                    'Start banking',
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

