import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color(0xFF008080); // Teal color
  static const Color primaryColorDark = Color(0xFF004C4C); // Dark Teal
  static const Color primaryColorLight = Color(0xFF66B2B2); // Light Teal

  static const Color secondaryColor = Color(0xFF006666); // Complementary dark teal
  static const Color accentColor = Color(0xFF4CAF50); // Green accent

  static const Color backgroundColor = Color(0xFFF0F0F0); // Light grey background
  static const Color surfaceColor = Color(0xFFFFFFFF); // White for surfaces

  static const Color textPrimaryColor = Color(0xFF212121); // Dark grey for primary text
  static const Color textSecondaryColor = Color(0xFF757575); // Grey for secondary text

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: accentColor,
        surface: surfaceColor,
        background: backgroundColor,
        onPrimary: surfaceColor,
        onSecondary: surfaceColor,
        onSurface: textPrimaryColor,
        onBackground: textPrimaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: surfaceColor),
        titleTextStyle: const TextStyle(
          color: surfaceColor,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor, // Reemplazo de 'primary' en ElevatedButton
          foregroundColor: surfaceColor, // Reemplazo de 'onPrimary' en ElevatedButton
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: accentColor, // Reemplazo de 'primary' en TextButton
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: accentColor,
        foregroundColor: surfaceColor,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: textPrimaryColor, fontWeight: FontWeight.bold), // Reemplazo de 'headline1'
        headlineSmall: TextStyle(color: textPrimaryColor), // Reemplazo de 'headline6'
        bodyLarge: TextStyle(color: textPrimaryColor), // Reemplazo de 'bodyText1'
        bodyMedium: TextStyle(color: textSecondaryColor), // Reemplazo de 'bodyText2'
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColor,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: textSecondaryColor),
        ),
        labelStyle: const TextStyle(color: primaryColor),
      ),
      cardTheme: const CardTheme(
        color: surfaceColor,
        shadowColor: primaryColorDark,
        elevation: 4,
        margin: EdgeInsets.all(8.0),
      ),
      iconTheme: const IconThemeData(
        color: primaryColorDark,
      ),
    );
  }
}
