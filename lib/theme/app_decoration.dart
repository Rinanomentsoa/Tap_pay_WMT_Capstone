import 'package:flutter/material.dart';
import 'package:tap_pay_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillIndigo500 => BoxDecoration(
        color: ColorConstant.indigo500,
      );
  static BoxDecoration get gradientBlue5033Blue90033 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.15,
            0.08,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blue5033,
            ColorConstant.black90033,
            ColorConstant.blue90033,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlue900 => BoxDecoration(
        color: ColorConstant.blue900,
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: ColorConstant.black90001,
      );
  static BoxDecoration get fillGray20002 => BoxDecoration(
        color: ColorConstant.gray20002,
      );
  static BoxDecoration get outlineBlack90026 => BoxDecoration();
  static BoxDecoration get fillIndigo50001 => BoxDecoration(
        color: ColorConstant.indigo50001,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: ColorConstant.gray20001,
      );
  static BoxDecoration get fillWhiteA7006c => BoxDecoration(
        color: ColorConstant.whiteA7006c,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: ColorConstant.blueGray10001,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius circleBorder27 = BorderRadius.circular(
    getHorizontalSize(
      27,
    ),
  );
}
