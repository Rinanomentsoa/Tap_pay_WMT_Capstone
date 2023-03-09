import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#fafafa');

  static Color gray5002 = fromHex('#fcfcfc');

  static Color gray5003 = fromHex('#f9f9f9');

  static Color red600 = fromHex('#ef2028');

  static Color blueGray10001 = fromHex('#d9d9d9');

  static Color blue5033 = fromHex('#33e0eaff');

  static Color gray50 = fromHex('#f8f8f8');

  static Color black90001 = fromHex('#0e0e0e');

  static Color greenA700 = fromHex('#1db453');

  static Color black900 = fromHex('#000000');

  static Color whiteA700Ab = fromHex('#abffffff');

  static Color indigo50001 = fromHex('#3466c3');

  static Color gray20001 = fromHex('#eeeeee');

  static Color blue90001 = fromHex('#0a3c98');

  static Color gray20002 = fromHex('#ecebeb');

  static Color black90026 = fromHex('#26000000');

  static Color gray700 = fromHex('#606060');

  static Color blue900 = fromHex('#0c48b7');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color blueGray100 = fromHex('#cfcfcf');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#383838');

  static Color gray900 = fromHex('#111111');

  static Color gray200 = fromHex('#f0eeee');

  static Color black90033 = fromHex('#33000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA70001 = fromHex('#fdfdfd');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#3567c3');

  static Color blue90033 = fromHex('#330c48b7');

  static Color gray70001 = fromHex('#666666');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
