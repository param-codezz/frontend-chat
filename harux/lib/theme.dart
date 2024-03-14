import 'package:flutter/material.dart';

class MaterialTheme {
  const MaterialTheme();

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00586c),
      surfaceTint: Color(0xff00677e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007f9b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff43636e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc7e9f7),
      onSecondaryContainer: Color(0xff2d4d58),
      tertiary: Color(0xff683f7e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8f63a5),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fafc),
      onBackground: Color(0xff181c1e),
      surface: Color(0xfff6fafc),
      onSurface: Color(0xff181c1e),
      surfaceVariant: Color(0xffdae4e9),
      onSurfaceVariant: Color(0xff3e484c),
      outline: Color(0xff6e797d),
      outlineVariant: Color(0xffbec8cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inverseOnSurface: Color(0xffeef1f3),
      inversePrimary: Color(0xff76d3f1),
      primaryFixed: Color(0xffb5ebff),
      onPrimaryFixed: Color(0xff001f28),
      primaryFixedDim: Color(0xff76d3f1),
      onPrimaryFixedVariant: Color(0xff004e60),
      secondaryFixed: Color(0xffc6e8f5),
      onSecondaryFixed: Color(0xff001f28),
      secondaryFixedDim: Color(0xffaaccd9),
      onSecondaryFixedVariant: Color(0xff2b4b56),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff2f0445),
      tertiaryFixedDim: Color(0xffe6b4fd),
      onTertiaryFixedVariant: Color(0xff5e3574),
      surfaceDim: Color(0xffd7dadd),
      surfaceBright: Color(0xfff6fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f6),
      surfaceContainer: Color(0xffebeef1),
      surfaceContainerHigh: Color(0xffe5e9eb),
      surfaceContainerHighest: Color(0xffdfe3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00495a),
      surfaceTint: Color(0xff00677e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007f9b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff274752),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff597985),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5a3170),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8f63a5),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafc),
      onBackground: Color(0xff181c1e),
      surface: Color(0xfff6fafc),
      onSurface: Color(0xff181c1e),
      surfaceVariant: Color(0xffdae4e9),
      onSurfaceVariant: Color(0xff3a4448),
      outline: Color(0xff566165),
      outlineVariant: Color(0xff727c81),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inverseOnSurface: Color(0xffeef1f3),
      inversePrimary: Color(0xff76d3f1),
      primaryFixed: Color(0xff007f9b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00657b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff597985),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff41616c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8f63a5),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff754b8b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadd),
      surfaceBright: Color(0xfff6fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f6),
      surfaceContainer: Color(0xffebeef1),
      surfaceContainerHigh: Color(0xffe5e9eb),
      surfaceContainerHighest: Color(0xffdfe3e5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002630),
      surfaceTint: Color(0xff00677e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00495a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002630),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff274752),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff360d4c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a3170),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafc),
      onBackground: Color(0xff181c1e),
      surface: Color(0xfff6fafc),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdae4e9),
      onSurfaceVariant: Color(0xff1c2529),
      outline: Color(0xff3a4448),
      outlineVariant: Color(0xff3a4448),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3133),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd0f2ff),
      primaryFixed: Color(0xff00495a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00313e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff274752),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff0d313b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5a3170),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff421a57),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadd),
      surfaceBright: Color(0xfff6fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f6),
      surfaceContainer: Color(0xffebeef1),
      surfaceContainerHigh: Color(0xffe5e9eb),
      surfaceContainerHighest: Color(0xffdfe3e5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff76d3f1),
      surfaceTint: Color(0xff76d3f1),
      onPrimary: Color(0xff003543),
      primaryContainer: Color(0xff007791),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffaaccd9),
      onSecondary: Color(0xff12353f),
      secondaryContainer: Color(0xff22434e),
      onSecondaryContainer: Color(0xffb6d8e6),
      tertiary: Color(0xffe6b4fd),
      onTertiary: Color(0xff461e5b),
      tertiaryContainer: Color(0xff885c9e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101416),
      onBackground: Color(0xffdfe3e5),
      surface: Color(0xff101416),
      onSurface: Color(0xffdfe3e5),
      surfaceVariant: Color(0xff3e484c),
      onSurfaceVariant: Color(0xffbec8cd),
      outline: Color(0xff889297),
      outlineVariant: Color(0xff3e484c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e5),
      inverseOnSurface: Color(0xff2d3133),
      inversePrimary: Color(0xff00677e),
      primaryFixed: Color(0xffb5ebff),
      onPrimaryFixed: Color(0xff001f28),
      primaryFixedDim: Color(0xff76d3f1),
      onPrimaryFixedVariant: Color(0xff004e60),
      secondaryFixed: Color(0xffc6e8f5),
      onSecondaryFixed: Color(0xff001f28),
      secondaryFixedDim: Color(0xffaaccd9),
      onSecondaryFixedVariant: Color(0xff2b4b56),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff2f0445),
      tertiaryFixedDim: Color(0xffe6b4fd),
      onTertiaryFixedVariant: Color(0xff5e3574),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff353a3c),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff313537),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff7ad7f6),
      surfaceTint: Color(0xff76d3f1),
      onPrimary: Color(0xff001921),
      primaryContainer: Color(0xff389cb9),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffaed0dd),
      onSecondary: Color(0xff001921),
      secondaryContainer: Color(0xff7596a2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe9b9ff),
      onTertiary: Color(0xff29003e),
      tertiaryContainer: Color(0xffad7fc3),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101416),
      onBackground: Color(0xffdfe3e5),
      surface: Color(0xff101416),
      onSurface: Color(0xfff8fbfd),
      surfaceVariant: Color(0xff3e484c),
      onSurfaceVariant: Color(0xffc2ccd1),
      outline: Color(0xff9aa5a9),
      outlineVariant: Color(0xff7a8589),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e5),
      inverseOnSurface: Color(0xff262b2d),
      inversePrimary: Color(0xff004f61),
      primaryFixed: Color(0xffb5ebff),
      onPrimaryFixed: Color(0xff00141a),
      primaryFixedDim: Color(0xff76d3f1),
      onPrimaryFixedVariant: Color(0xff003c4a),
      secondaryFixed: Color(0xffc6e8f5),
      onSecondaryFixed: Color(0xff00141a),
      secondaryFixedDim: Color(0xffaaccd9),
      onSecondaryFixedVariant: Color(0xff193a45),
      tertiaryFixed: Color(0xfff6d9ff),
      onTertiaryFixed: Color(0xff210033),
      tertiaryFixedDim: Color(0xffe6b4fd),
      onTertiaryFixedVariant: Color(0xff4c2462),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff353a3c),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff313537),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static TextStyle chatBubble(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: 11,
        fontWeight: FontWeight.w500);
  }

  static TextStyle actionButtonText(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: 14,
        fontWeight: FontWeight.w500);
  }

  static TextStyle contactButtonText(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: 12,
        fontWeight: FontWeight.w500);
  }

  static TextStyle chatTitle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onSurface,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle chatSubtitle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle appBar(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onSurface,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle sentMessageBody(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle recievedMessageBody(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle errorTextLabel(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.error,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle bioText(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    );
  }  
  static TextStyle sentMessageBodyError(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onError,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff5fcff),
      surfaceTint: Color(0xff76d3f1),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff7ad7f6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff5fcff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffaed0dd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe9b9ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101416),
      onBackground: Color(0xffdfe3e5),
      surface: Color(0xff101416),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3e484c),
      onSurfaceVariant: Color(0xfff5fcff),
      outline: Color(0xffc2ccd1),
      outlineVariant: Color(0xffc2ccd1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e5),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002f3a),
      primaryFixed: Color(0xffc1eeff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff7ad7f6),
      onPrimaryFixedVariant: Color(0xff001921),
      secondaryFixed: Color(0xffcaecfa),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffaed0dd),
      onSecondaryFixedVariant: Color(0xff001921),
      tertiaryFixed: Color(0xfff8dfff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe9b9ff),
      onTertiaryFixedVariant: Color(0xff29003e),
      surfaceDim: Color(0xff101416),
      surfaceBright: Color(0xff353a3c),
      surfaceContainerLowest: Color(0xff0a0f11),
      surfaceContainerLow: Color(0xff181c1e),
      surfaceContainer: Color(0xff1c2022),
      surfaceContainerHigh: Color(0xff262b2d),
      surfaceContainerHighest: Color(0xff313537),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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
