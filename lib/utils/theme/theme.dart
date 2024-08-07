import 'package:flutter/material.dart';
import 'package:zulfaniz_store/utils/constants/colors.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/buttom_sheet_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/text_filed_theme.dart';
import 'package:zulfaniz_store/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtomTheme.lightOutlinedButtomTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtomTheme.darkOutlinedButtomTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
