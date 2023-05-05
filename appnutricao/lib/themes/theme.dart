import 'package:flutter/material.dart';

ThemeData colorsOne = ThemeData(
    primaryColor: const Color.fromRGBO(7, 249, 162, 1),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromRGBO(7, 249, 162, 1),
        secondary: const Color.fromRGBO(9, 193, 132, 1)));

ThemeData colorsTwo = ThemeData(
    primaryColor: const Color.fromRGBO(10, 137, 103, 1),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromRGBO(10, 137, 103, 1),
        secondary: const Color.fromRGBO(12, 81, 73, 1)));
ThemeData colorsThree = ThemeData(
    primaryColor: const Color.fromRGBO(245, 245, 245, 1),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromRGBO(245, 245, 245, 96),
        secondary: const Color.fromRGBO(0, 0, 0, 1)));

ThemeData myTextThemes = ThemeData(
    textTheme: TextTheme(
        displayLarge: const TextStyle(
            fontSize: 20, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            fontSize: 40,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            color: colorsTwo.colorScheme.primary),
        displaySmall: TextStyle(
            fontSize: 20, fontFamily: 'OpenSans', fontWeight: FontWeight.bold,
            color: colorsTwo.colorScheme.secondary
            ),
        headlineLarge: const TextStyle(
            fontSize: 20, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        headlineMedium: const TextStyle(
            fontSize: 16, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        headlineSmall: const TextStyle(
            fontSize: 20, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        titleLarge: const TextStyle(
            fontSize: 40, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        titleMedium: const TextStyle(
            fontSize: 16, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        titleSmall: const TextStyle(
            fontSize: 14, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
        labelLarge: const TextStyle(
            fontSize: 20,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.normal),
        labelMedium: const TextStyle(
            fontSize: 16,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.normal),
        labelSmall: const TextStyle(
            fontSize: 12,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.normal)));

ThemeData buttonsTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(colorsTwo.colorScheme.primary))
              ),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all(colorsTwo.colorScheme.secondary))),
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          textStyle:
              MaterialStateProperty.all(myTextThemes.textTheme.titleLarge),
          backgroundColor:
              MaterialStateProperty.all(colorsTwo.colorScheme.primary))),
);

ThemeData myAppBarTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: colorsOne.colorScheme.primary));
