import "package:flutter/material.dart";

class PrimaryTheme {
  final TextTheme textTheme;

  const PrimaryTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff735c0c),
      surfaceTint: Color(0xff735c0c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffe08c),
      onPrimaryContainer: Color(0xff241a00),
      secondary: Color(0xff695d3f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff2e1bb),
      onSecondaryContainer: Color(0xff231b04),
      tertiary: Color(0xff47664a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc8ecc9),
      onTertiaryContainer: Color(0xff03210b),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f1),
      onSurface: Color(0xff1f1b13),
      onSurfaceVariant: Color(0xff4c4639),
      outline: Color(0xff7e7667),
      outlineVariant: Color(0xffcfc5b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xffe3c46c),
      primaryFixed: Color(0xffffe08c),
      onPrimaryFixed: Color(0xff241a00),
      primaryFixedDim: Color(0xffe3c46c),
      onPrimaryFixedVariant: Color(0xff584400),
      secondaryFixed: Color(0xfff2e1bb),
      onSecondaryFixed: Color(0xff231b04),
      secondaryFixedDim: Color(0xffd5c5a1),
      onSecondaryFixedVariant: Color(0xff50462a),
      tertiaryFixed: Color(0xffc8ecc9),
      onTertiaryFixed: Color(0xff03210b),
      tertiaryFixedDim: Color(0xffadcfae),
      onTertiaryFixedVariant: Color(0xff304d34),
      surfaceDim: Color(0xffe1d9cc),
      surfaceBright: Color(0xfffff8f1),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xfff5eddf),
      surfaceContainerHigh: Color(0xfff0e7d9),
      surfaceContainerHighest: Color(0xffeae1d4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff534100),
      surfaceTint: Color(0xff735c0c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8b7223),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4c4226),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff807354),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2c4930),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d7c5f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f1),
      onSurface: Color(0xff1f1b13),
      onSurfaceVariant: Color(0xff484235),
      outline: Color(0xff655e50),
      outlineVariant: Color(0xff817a6b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xffe3c46c),
      primaryFixed: Color(0xff8b7223),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff705909),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff807354),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff665b3d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5d7c5f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff446348),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe1d9cc),
      surfaceBright: Color(0xfffff8f1),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xfff5eddf),
      surfaceContainerHigh: Color(0xfff0e7d9),
      surfaceContainerHighest: Color(0xffeae1d4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2c2100),
      surfaceTint: Color(0xff735c0c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff534100),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2a2109),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4c4226),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0a2812),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2c4930),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f1),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff282318),
      outline: Color(0xff484235),
      outlineVariant: Color(0xff484235),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xffffeab9),
      primaryFixed: Color(0xff534100),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff382b00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4c4226),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff352c12),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff2c4930),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff15331b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe1d9cc),
      surfaceBright: Color(0xfffff8f1),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xfff5eddf),
      surfaceContainerHigh: Color(0xfff0e7d9),
      surfaceContainerHighest: Color(0xffeae1d4),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe3c46c),
      surfaceTint: Color(0xffe3c46c),
      onPrimary: Color(0xff3d2f00),
      primaryContainer: Color(0xff584400),
      onPrimaryContainer: Color(0xffffe08c),
      secondary: Color(0xffd5c5a1),
      onSecondary: Color(0xff392f15),
      secondaryContainer: Color(0xff50462a),
      onSecondaryContainer: Color(0xfff2e1bb),
      tertiary: Color(0xffadcfae),
      onTertiary: Color(0xff19361f),
      tertiaryContainer: Color(0xff304d34),
      onTertiaryContainer: Color(0xffc8ecc9),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff16130b),
      onSurface: Color(0xffeae1d4),
      onSurfaceVariant: Color(0xffcfc5b4),
      outline: Color(0xff989080),
      outlineVariant: Color(0xff4c4639),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae1d4),
      inversePrimary: Color(0xff735c0c),
      primaryFixed: Color(0xffffe08c),
      onPrimaryFixed: Color(0xff241a00),
      primaryFixedDim: Color(0xffe3c46c),
      onPrimaryFixedVariant: Color(0xff584400),
      secondaryFixed: Color(0xfff2e1bb),
      onSecondaryFixed: Color(0xff231b04),
      secondaryFixedDim: Color(0xffd5c5a1),
      onSecondaryFixedVariant: Color(0xff50462a),
      tertiaryFixed: Color(0xffc8ecc9),
      onTertiaryFixed: Color(0xff03210b),
      tertiaryFixedDim: Color(0xffadcfae),
      onTertiaryFixedVariant: Color(0xff304d34),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff3d392f),
      surfaceContainerLowest: Color(0xff110e07),
      surfaceContainerLow: Color(0xff1f1b13),
      surfaceContainer: Color(0xff231f17),
      surfaceContainerHigh: Color(0xff2d2a21),
      surfaceContainerHighest: Color(0xff39342b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe7c870),
      surfaceTint: Color(0xffe3c46c),
      onPrimary: Color(0xff1d1500),
      primaryContainer: Color(0xffa98e3d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd9c9a5),
      onSecondary: Color(0xff1d1501),
      secondaryContainer: Color(0xff9d906e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb1d4b2),
      onTertiary: Color(0xff001b07),
      tertiaryContainer: Color(0xff78997a),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff16130b),
      onSurface: Color(0xfffffaf6),
      onSurfaceVariant: Color(0xffd3cab8),
      outline: Color(0xffaaa291),
      outlineVariant: Color(0xff8a8273),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae1d4),
      inversePrimary: Color(0xff594500),
      primaryFixed: Color(0xffffe08c),
      onPrimaryFixed: Color(0xff171000),
      primaryFixedDim: Color(0xffe3c46c),
      onPrimaryFixedVariant: Color(0xff443400),
      secondaryFixed: Color(0xfff2e1bb),
      onSecondaryFixed: Color(0xff171000),
      secondaryFixedDim: Color(0xffd5c5a1),
      onSecondaryFixedVariant: Color(0xff3f351b),
      tertiaryFixed: Color(0xffc8ecc9),
      onTertiaryFixed: Color(0xff001505),
      tertiaryFixedDim: Color(0xffadcfae),
      onTertiaryFixedVariant: Color(0xff1f3c24),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff3d392f),
      surfaceContainerLowest: Color(0xff110e07),
      surfaceContainerLow: Color(0xff1f1b13),
      surfaceContainer: Color(0xff231f17),
      surfaceContainerHigh: Color(0xff2d2a21),
      surfaceContainerHighest: Color(0xff39342b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffffaf6),
      surfaceTint: Color(0xffe3c46c),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe7c870),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf6),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd9c9a5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff0ffed),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb1d4b2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff16130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf6),
      outline: Color(0xffd3cab8),
      outlineVariant: Color(0xffd3cab8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae1d4),
      inversePrimary: Color(0xff352800),
      primaryFixed: Color(0xffffe5a1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe7c870),
      onPrimaryFixedVariant: Color(0xff1d1500),
      secondaryFixed: Color(0xfff6e5bf),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd9c9a5),
      onSecondaryFixedVariant: Color(0xff1d1501),
      tertiaryFixed: Color(0xffcdf0cd),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffb1d4b2),
      onTertiaryFixedVariant: Color(0xff001b07),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff3d392f),
      surfaceContainerLowest: Color(0xff110e07),
      surfaceContainerLow: Color(0xff1f1b13),
      surfaceContainer: Color(0xff231f17),
      surfaceContainerHigh: Color(0xff2d2a21),
      surfaceContainerHighest: Color(0xff39342b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
