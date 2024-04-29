import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(233, 45, 196, 11));

//creating a DarkMode
var kDardColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(
    255,
    5,
    99,
    125,
  ),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ), //CONFIGURING A THEME FOR DARKmODE
      theme: ThemeData(useMaterial3: true).copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onPrimaryContainer,
          foregroundColor: kDarkColorScheme.primaryContainer,
        ),
        //Styling all the cards
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        //default button styles
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDardColorScheme.onPrimaryContainer),
        ),
        //
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kDarkColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
      ),
      //themeMode: ThemeMode.system, //default
      home: const Expenses(),
    ),
  );
}
