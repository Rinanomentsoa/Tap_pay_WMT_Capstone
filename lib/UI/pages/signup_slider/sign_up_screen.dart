import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 75, 15, 25),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(11, 18, 15, 0),
                child: Text(
                  'Create an account',
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
                  'Begin your journey to financial freedom',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const AllTextFields(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 45, 0, 10),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Verify");
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ))),
                  child: const Text(
                    'Create account',
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
                    Navigator.pushNamed(context, "/Signin");
                  },
                  child: const Text(
                    "Already have an account? Login",
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

// this class is a combination of all TextField elements
class AllTextFields extends StatefulWidget {
  const AllTextFields({Key? key}) : super(key: key);

  @override
  State<AllTextFields> createState() => _AllTextFieldsState();
}

class _AllTextFieldsState extends State<AllTextFields> {
  bool passwordObscured = true;
  //final countryPicker = const FlCountryCodePicker();
  //CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
        // defining Left, Right, Top Bottom padding
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            // align it to the end of the screen
            children: [
              // EMAIL INPUT
              emailField(),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              //PHONE NUMBER
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          //COUNTRY CODE
                          /*prefixIcon: GestureDetector(
                            onTap: () async {
                              final code = await countryPicker.showPicker(
                                  context: context);
                              if (code != null) {
                                print(code);
                                setState(() {
                                  countryCode = code;
                                });
                              }
                              ;
                            },
                            child: Row(
                              children: [
                                Container(
                                  child: countryCode?.flagImage() ?? Icon(Icons.flag)
                                ),
                                Container(
                                  color: Color(0X0F3567C3),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 12),
                                    child: Text(
                                        //countryCode?.dialCode ??
                                        "+261"),
                                  ),
                                ),
                              ],
                            ),
                          ),*/
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Color(0XFF3567C3)))),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              // PASSWORD INPUT
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
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
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
            ]));
  }
}

Widget emailField() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            "E-mail",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black54,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
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
