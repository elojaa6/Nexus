import 'package:flutter/material.dart';

@immutable
class LinkCardTheme extends ThemeExtension<LinkCardTheme> {
  const LinkCardTheme({
    required this.gradientStart,
    required this.gradientEnd,
  });

  final Color? gradientStart;
  final Color? gradientEnd;

  @override
  ThemeExtension<LinkCardTheme> copyWith({Color? gradientStart, Color? gradientEnd}) {
    return LinkCardTheme(
      gradientStart: gradientStart ?? this.gradientStart,
      gradientEnd: gradientEnd ?? this.gradientEnd,
    );
  }

  @override
  ThemeExtension<LinkCardTheme> lerp(ThemeExtension<LinkCardTheme>? other, double t) {
    if (other is! LinkCardTheme) {
      return this;
    }
    return LinkCardTheme(
      gradientStart: Color.lerp(gradientStart, other.gradientStart, t),
      gradientEnd: Color.lerp(gradientEnd, other.gradientEnd, t),
    );
  }
}

Color _getGradientStartColor(Color baseColor) {
  final hslColor = HSLColor.fromColor(baseColor);
  return hslColor.withSaturation(0.3).withLightness(0.2).toColor();
}

class AppColors {
  static const Color primary = Color(0xFF121212);
  static const Color accent = Color(0xFF39FF14);
  static const Color gradientStart = Color(0xFF2A3328);
  static const Color gradientEnd = Color(0xFF1A1A1A);
  static const Color white = Colors.white;
  static const Color lightGrey = Colors.grey;
}

class AppTextStyles {
  static const TextStyle title = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static const TextStyle subtitle = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 16,
  );
}

final ThemeData greenTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.primary,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.accent,
    onPrimary: AppColors.white,
    onSecondary: AppColors.white,
  ),
  textTheme: const TextTheme(
    titleLarge: AppTextStyles.title,
    bodyMedium: AppTextStyles.subtitle,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.white,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: AppColors.white),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.white),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.accent,
      foregroundColor: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.accent,
      side: const BorderSide(color: AppColors.accent),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.accent,
    foregroundColor: AppColors.primary,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColors.white,
  ),
  extensions: <ThemeExtension<dynamic>>[
    LinkCardTheme(
      gradientStart: _getGradientStartColor(AppColors.accent),
      gradientEnd: AppColors.gradientEnd,
    ),
  ],
);

final ThemeData blueTheme = greenTheme.copyWith(
  colorScheme: greenTheme.colorScheme.copyWith(
    secondary: Colors.blue,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.blue,
      side: const BorderSide(color: Colors.blue),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
  ),
  extensions: <ThemeExtension<dynamic>>[
    LinkCardTheme(
      gradientStart: _getGradientStartColor(Colors.blue),
      gradientEnd: AppColors.gradientEnd,
    ),
  ],
);

final ThemeData redTheme = greenTheme.copyWith(
  colorScheme: greenTheme.colorScheme.copyWith(
    secondary: Colors.red,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.red,
      side: const BorderSide(color: Colors.red),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
  ),
  extensions: <ThemeExtension<dynamic>>[
    LinkCardTheme(
      gradientStart: _getGradientStartColor(Colors.red),
      gradientEnd: AppColors.gradientEnd,
    ),
  ],
);

final ThemeData purpleTheme = greenTheme.copyWith(
  colorScheme: greenTheme.colorScheme.copyWith(
    secondary: Colors.purple,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.purple,
      side: const BorderSide(color: Colors.purple),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
  ),
  extensions: <ThemeExtension<dynamic>>[
    LinkCardTheme(
      gradientStart: _getGradientStartColor(Colors.purple),
      gradientEnd: AppColors.gradientEnd,
    ),
  ],
);

final ThemeData orangeTheme = greenTheme.copyWith(
  colorScheme: greenTheme.colorScheme.copyWith(
    secondary: Colors.orange,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.orange,
      side: const BorderSide(color: Colors.orange),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.orange,
    foregroundColor: Colors.white,
  ),
  extensions: <ThemeExtension<dynamic>>[
    LinkCardTheme(
      gradientStart: _getGradientStartColor(Colors.orange),
      gradientEnd: AppColors.gradientEnd,
    ),
  ],
);

final ThemeData tealTheme = greenTheme.copyWith(
  colorScheme: greenTheme.colorScheme.copyWith(
    secondary: Colors.teal,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.teal,
      side: const BorderSide(color: Colors.teal),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
  extensions: <ThemeExtension<dynamic>>[
    LinkCardTheme(
      gradientStart: _getGradientStartColor(Colors.teal),
      gradientEnd: AppColors.gradientEnd,
    ),
  ],
);

final List<ThemeData> appThemes = [
  greenTheme,
  blueTheme,
  redTheme,
  purpleTheme,
  orangeTheme,
  tealTheme,
];
