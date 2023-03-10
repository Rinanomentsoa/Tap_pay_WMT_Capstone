
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class ConnectAccount extends StatefulWidget {
  const ConnectAccount({Key? key}) : super(key: key);

  @override
  State<ConnectAccount> createState() => _ConnectAccountState();
}

class _ConnectAccountState extends State<ConnectAccount> {
  void showAlertDialog(){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      text: 'Your wallet is successfully linked to your existing bank account!',
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 35, 15, 25),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(11, 18, 15, 0),
                child: Text(
                  'Connect accounts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                child: Text(
                  'Link your existing bank accounts to easily fund your wallet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const InputFields(),
              // ADD CARD BUTTON
              Container(
                margin: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                   showAlertDialog();
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ))),
                  child: const Text(
                    'Add Account',
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

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
        // defining Left, Right, Top Bottom padding
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            // align it to the end of the screen
            children: [
              //Account number
              contentField('Account number'),
              //Select bank
              contentField('Select bank'),
              //BVN Number
              contentField('BVN Number'),
            ]));
  }
}

Widget contentField(
  String FieldTitle,
) {
  return Container(
    padding: EdgeInsets.only(top: 10),
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
              fontWeight: FontWeight.w400,
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
