
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool passwordObscured = true;

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
                  'Welcome back! Olabisi',
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
                  'Let’s start saving and spending',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              //PASSWORD
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 25, 6, 6),
                    child: Text(
                      'Password',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordObscured,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: "Minimum of 8 Characters",
                        hintStyle: const TextStyle(
                            color: Color(0xFF6DA1BE),
                            fontSize: 14,
                            fontFamily: 'Poppins'),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordObscured = !passwordObscured;
                            });
                          },
                          icon: Icon(
                            passwordObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                            const BorderSide(color: Color(0XFF3567C3)))),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0,45,0, 10),
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
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Signup");
                  },
                  child: const Text(
                    "Don’t have an account? Create Account",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Color(0XFF3567C3)),
                  )),
            ],
          ),
        ));
  }
}

