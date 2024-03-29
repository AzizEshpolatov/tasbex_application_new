import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utils/app_colors/app_colors.dart';

class AppTheme {
  // ---------------APP LIGHT THEME --------------------//
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // ---------------APP BAR THEME --------------------//
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.white,
      ),
    ),
    shadowColor: Colors.black,
    cardColor: const Color(0xFFFFFFFF),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.white),
    // ---------------TEXT THEME --------------------//

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      // =============================================//

      displayMedium: TextStyle(
        fontSize: 45,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
    ),

    // --------------- icon button theme  -------------- //

    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.green,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all((Colors.black)),
      trackOutlineColor: MaterialStateProperty.all((Colors.red)),
    ),
    // ================================================== //

    // ================================================== //
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0056D2),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFDAE2FF),
      onPrimaryContainer: Color(0xFF001848),
      secondary: Color(0xFF7C5800),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDEA8),
      onSecondaryContainer: Color(0xFF271900),
      tertiary: Color(0xFF5342E2),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFE3DFFF),
      onTertiaryContainer: Color(0xFF130067),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFDFBFF),
      onBackground: Color(0xFF001B3D),
      surface: Color(0xFFFDFBFF),
      onSurface: Color(0xFF001B3D),
      surfaceVariant: Color(0xFFE1E2EC),
      onSurfaceVariant: Color(0xFF45464F),
      outline: Color(0xFF757780),
      onInverseSurface: Color(0xFFECF0FF),
      inverseSurface: Color(0xFF003062),
      inversePrimary: Color(0xFFB2C5FF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF0056D2),
      outlineVariant: Color(0xFFC5C6D0),
      scrim: Color(0xFF000000),
    ),
    useMaterial3: true,
  );

  // ---------------APP DARK THEME --------------------//
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.white),
    // ---------------APP BAR THEME --------------------//
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.grey,
      ),
    ),

    iconTheme: const IconThemeData(
      color: Colors.white,
    ),

    // --------------- icon button theme  -------------- //
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        backgroundColor: Colors.black,
        focusColor: Colors.red,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all((Colors.white)),
      trackOutlineColor: MaterialStateProperty.all((Colors.red)),
    ),

    // ---------------TEXT THEME --------------------//

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.white,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
    ),
    useMaterial3: true,
    cardColor: const Color(0xFF252525),
    shadowColor: Colors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFB2C5FF),
      onPrimary: Color(0xFF002B73),
      primaryContainer: Color(0xFF0040A1),
      onPrimaryContainer: Color(0xFFDAE2FF),
      secondary: Color(0xFFFFBA20),
      onSecondary: Color(0xFF412D00),
      secondaryContainer: Color(0xFF5E4200),
      onSecondaryContainer: Color(0xFFFFDEA8),
      tertiary: Color(0xFFC5C0FF),
      onTertiary: Color(0xFF2400A2),
      tertiaryContainer: Color(0xFF3A20CB),
      onTertiaryContainer: Color(0xFFE3DFFF),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF001B3D),
      onBackground: Color(0xFFD6E3FF),
      surface: Color(0xFF001B3D),
      onSurface: Color(0xFFD6E3FF),
      surfaceVariant: Color(0xFF45464F),
      onSurfaceVariant: Color(0xFFC5C6D0),
      outline: Color(0xFF8F909A),
      onInverseSurface: Color(0xFF001B3D),
      inverseSurface: Color(0xFFD6E3FF),
      inversePrimary: Color(0xFF0056D2),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFB2C5FF),
      outlineVariant: Color(0xFF45464F),
      scrim: Color(0xFF000000),
    ),
  );
}
