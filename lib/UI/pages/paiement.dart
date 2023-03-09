import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../../core/utils/image_constant.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_image_view.dart';

class PaiementScreen extends StatefulWidget {
  const PaiementScreen({Key? key}) : super(key: key);

  @override
  State<PaiementScreen> createState() => _PaiementScreenState();
}

class _PaiementScreenState extends State<PaiementScreen> {
  void showAlertDialog(){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      text: 'Transaction Completed Successfully!',
    );
  }
  void showCancelledDialog(){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      text: " wrong person? \n Don't worry, transaction cancelled !",
    );
  }
  //variables
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF3567C3),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 25,
        ),
        //MAIN COLUMN
        child: ListView(
          children: [
            //HEADER
            Center(
              child: Column(
                children: [
                  Text(
                    'Send Money',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  //AVATAR
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomIconButton(
                      height: 95,
                      width: 95,
                      variant: IconButtonVariant.FillWhiteA700,
                      shape: IconButtonShape.CircleBorder34,
                      padding: IconButtonPadding.PaddingAll7,
                      child: CustomImageView(
                        svgPath: ImageConstant.accountIcon,
                        color: Color(0xff3f69a9),
                        height: 77,
                        width: 77,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Angel Frozen Foods',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '0785789089',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 1.56,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffffffff),
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xabeafbfd),
                    indent: 10,
                    endIndent: 10,
                    thickness: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                    child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 44,
                          letterSpacing: 5,
                          color: Color(0xffddecf5),
                          fontWeight: FontWeight.w500,
                        ),
                      keyboardType: TextInputType.number
                    ),
                  ),
                  Divider(
                    color: Color(0xabeafbfd),
                    indent: 10,
                    endIndent: 10,
                    thickness: 3,
                  ),
                  GestureDetector(
                    onTap: (){
                      showAlertDialog();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xabeafbfd)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: const Text(
                            'Send Money',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color : Color(0xFF1D3A6C),
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showCancelledDialog();
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xabffdddd)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 42,
                        vertical: 13),
                        child: Text(
                          'CANCEL',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color : Color(0xFF1D3A6C),
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



