import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static Color categoryIconColor = Colors.white;

  static ThemeData customThemeData() {
    return ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        backgroundColor: Colors.grey[50],
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
      ),
      inputDecorationTheme:
          const InputDecorationTheme(iconColor: Colors.black54),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.black)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white)),
      textTheme: TextTheme(
        bodySmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
        bodyMedium: const TextStyle(color: Colors.black, fontSize: 17),
        titleMedium: const TextStyle(
          fontSize: 18,
        ),
        titleLarge: const TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        labelMedium: const TextStyle(
            color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        headlineLarge: GoogleFonts.ebGaramond(
            color: Colors.black, fontWeight: FontWeight.w500),
        displayLarge: GoogleFonts.ebGaramond(
            fontSize: 90, color: Colors.white, fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.ebGaramond(
            fontSize: 70,
            color: const Color(0xffc1ab7c),
            fontWeight: FontWeight.bold),
      ),
      //iconTheme: const IconThemeData(color: Colors.black54),
      tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(
            fontSize: 20,
          ),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 4,
              color: Colors.black,
            ),
          )),
    );
  }
}