import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get data {
    return ThemeData(
        fontFamily: "Cairo",
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: AppColor.primaryColor),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor),
              borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor),
              borderRadius: BorderRadius.circular(8)),
          fillColor: Color(0xfff9fafc),
          filled: true,
// border: InputBorder.none,
        ),
        textTheme: TextTheme(
          headline2: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: AppColor.primaryColor,
              height: 1.4),
          headline6: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w700,
              color: AppColor.primaryColor,
              height: 1.3),
          headline5:
              TextStyle(fontSize: 19.0, color: Colors.black, height: 1.3),
          headline4: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17.0,
              color: AppColor.primaryColor,
              height: 1.3),
          headline3: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
              height: 1.3),
          headline1: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.w300,
              color: AppColor.primaryColor,
              height: 1.4),
          subtitle1: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: AppColor.colorGray,
              height: 1.3),
          bodyText2: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor,
              height: 1.2),
          bodyText1: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryColor,
              height: 1.3),
          caption: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: AppColor.colorGray,
              height: 1.2),
          button: TextStyle(fontSize: 16, color: AppColor.colorLightGray),
          overline: TextStyle(fontSize: 16, color: Color(0xff707070)),
        ),
        cardTheme: CardTheme(
            shadowColor: Colors.grey[800],
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)))),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColor.primaryColor,
            type: BottomNavigationBarType.fixed),
        bottomSheetTheme: BottomSheetThemeData(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            )),
        appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: AppColor.primaryColor),
            elevation: 0,
            centerTitle: true));
  }
}
