import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

// k untuk menandakan variabel adalah global.
var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 206, 229, 229));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness
        .dark, // ini buat optimize agar shade yang di buat gelap bukan terang.
    seedColor: const Color.fromARGB(255, 46, 61, 61));
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onPrimaryContainer,
          foregroundColor: kDarkColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              // titleLarge: ThemeData().textTheme.titleLarge.copyWith()
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kDarkColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
      ),
      // theme: ThemeData(useMaterial3: true),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              // titleLarge: ThemeData().textTheme.titleLarge.copyWith(),
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
        // scaffoldBackgroundColor: Color.fromARGB(255, 229, 227, 206),
      ),
      //kontrol tema
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
