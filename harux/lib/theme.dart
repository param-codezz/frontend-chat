import "package:flutter/material.dart";

class MaterialTheme {
  String themeColor;
  dynamic colorTheme;
  MaterialTheme({required this.themeColor}) {
    _setTheme(themeColor);
  }
  void _setTheme(String color) {
    if (color == 'purple') {
      colorTheme = PurpleColorScheme();
    } else if (color == 'blue') {
      colorTheme = BlueColorScheme();
    } else if (color == 'green') {
      colorTheme = GreenColorScheme();
    } else if (color == 'yellow') {
      colorTheme = YellowColorScheme();
    } else if (color == 'orange') {
      colorTheme = OrangeColorScheme();
    } else {
      colorTheme = PinkColorScheme();
    }
  }

  ColorScheme light() {
    return colorTheme.dark();
  }

  ColorScheme dark() {
    return colorTheme.light();
  }
}

class PurpleColorScheme {
  ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF6750A4),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFEADDFF),
      onPrimaryContainer: Color(0xFF21005D),
      secondary: Color(0xFF625B71),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFE8DEF8),
      onSecondaryContainer: Color(0xFF1D192B),
      tertiary: Color(0xFF7D5260),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFD8E4),
      onTertiaryContainer: Color(0xFF31111D),
      error: Color(0xFFB3261E),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFF9DEDC),
      onErrorContainer: Color(0xFF410E0B),
      outline: Color(0xFF79747E),
      background: Color(0xFFFFFBFE),
      onBackground: Color(0xFF1C1B1F),
      surface: Color(0xFFFFFBFE),
      onSurface: Color(0xFF1C1B1F),
      surfaceVariant: Color(0xFFE7E0EC),
      onSurfaceVariant: Color(0xFF49454F),
      inverseSurface: Color(0xFF313033),
      onInverseSurface: Color(0xFFF4EFF4),
      inversePrimary: Color(0xFFD0BCFF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF6750A4),
      outlineVariant: Color(0xFFCAC4D0),
      scrim: Color(0xFF000000),
    );
  }

  ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFD0BCFF),
      onPrimary: Color(0xFF381E72),
      primaryContainer: Color(0xFF4F378B),
      onPrimaryContainer: Color(0xFFEADDFF),
      secondary: Color(0xFFCCC2DC),
      onSecondary: Color(0xFF332D41),
      secondaryContainer: Color(0xFF4A4458),
      onSecondaryContainer: Color(0xFFE8DEF8),
      tertiary: Color(0xFFEFB8C8),
      onTertiary: Color(0xFF492532),
      tertiaryContainer: Color(0xFF633B48),
      onTertiaryContainer: Color(0xFFFFD8E4),
      error: Color(0xFFF2B8B5),
      onError: Color(0xFF601410),
      errorContainer: Color(0xFF8C1D18),
      onErrorContainer: Color(0xFFF9DEDC),
      outline: Color(0xFF938F99),
      background: Color(0xFF1C1B1F),
      onBackground: Color(0xFFE6E1E5),
      surface: Color(0xFF1C1B1F),
      onSurface: Color(0xFFE6E1E5),
      surfaceVariant: Color(0xFF49454F),
      onSurfaceVariant: Color(0xFFCAC4D0),
      inverseSurface: Color(0xFFE6E1E5),
      onInverseSurface: Color(0xFF313033),
      inversePrimary: Color(0xFF6750A4),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFD0BCFF),
      outlineVariant: Color(0xFF49454F),
      scrim: Color(0xFF000000),
    );
  }
}

class GreenColorScheme {
  ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF006E1C),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF94F990),
      onPrimaryContainer: Color(0xFF002204),
      secondary: Color(0xFF52634F),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFD5E8CF),
      onSecondaryContainer: Color(0xFF111F0F),
      tertiary: Color(0xFF38656A),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFBCEBF0),
      onTertiaryContainer: Color(0xFF002023),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFCFDF6),
      onBackground: Color(0xFF1A1C19),
      surface: Color(0xFFFCFDF6),
      onSurface: Color(0xFF1A1C19),
      surfaceVariant: Color(0xFFDEE5D8),
      onSurfaceVariant: Color(0xFF424940),
      outline: Color(0xFF72796F),
      onInverseSurface: Color(0xFFF0F1EB),
      inverseSurface: Color(0xFF2F312D),
      inversePrimary: Color(0xFF78DC77),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF006E1C),
      outlineVariant: Color(0xFFC2C9BD),
      scrim: Color(0xFF000000),
    );
  }

  ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF78DC77),
      onPrimary: Color(0xFF00390A),
      primaryContainer: Color(0xFF005313),
      onPrimaryContainer: Color(0xFF94F990),
      secondary: Color(0xFFBACCB3),
      onSecondary: Color(0xFF253423),
      secondaryContainer: Color(0xFF3B4B38),
      onSecondaryContainer: Color(0xFFD5E8CF),
      tertiary: Color(0xFFA0CFD4),
      onTertiary: Color(0xFF00363B),
      tertiaryContainer: Color(0xFF1F4D52),
      onTertiaryContainer: Color(0xFFBCEBF0),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF1A1C19),
      onBackground: Color(0xFFE2E3DD),
      surface: Color(0xFF1A1C19),
      onSurface: Color(0xFFE2E3DD),
      surfaceVariant: Color(0xFF424940),
      onSurfaceVariant: Color(0xFFC2C9BD),
      outline: Color(0xFF8C9388),
      onInverseSurface: Color(0xFF1A1C19),
      inverseSurface: Color(0xFFE2E3DD),
      inversePrimary: Color(0xFF006E1C),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF78DC77),
      outlineVariant: Color(0xFF424940),
      scrim: Color(0xFF000000),
    );
  }
}

class BlueColorScheme {
  ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0061A4),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD1E4FF),
      onPrimaryContainer: Color(0xFF001D36),
      secondary: Color(0xFF535F70),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFD7E3F7),
      onSecondaryContainer: Color(0xFF101C2B),
      tertiary: Color(0xFF6B5778),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFF2DAFF),
      onTertiaryContainer: Color(0xFF251431),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFDFCFF),
      onBackground: Color(0xFF1A1C1E),
      surface: Color(0xFFFDFCFF),
      onSurface: Color(0xFF1A1C1E),
      surfaceVariant: Color(0xFFDFE2EB),
      onSurfaceVariant: Color(0xFF43474E),
      outline: Color(0xFF73777F),
      onInverseSurface: Color(0xFFF1F0F4),
      inverseSurface: Color(0xFF2F3033),
      inversePrimary: Color(0xFF9ECAFF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF0061A4),
      outlineVariant: Color(0xFFC3C7CF),
      scrim: Color(0xFF000000),
    );
  }

  ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF9ECAFF),
      onPrimary: Color(0xFF003258),
      primaryContainer: Color(0xFF00497D),
      onPrimaryContainer: Color(0xFFD1E4FF),
      secondary: Color(0xFFBBC7DB),
      onSecondary: Color(0xFF253140),
      secondaryContainer: Color(0xFF3B4858),
      onSecondaryContainer: Color(0xFFD7E3F7),
      tertiary: Color(0xFFD6BEE4),
      onTertiary: Color(0xFF3B2948),
      tertiaryContainer: Color(0xFF523F5F),
      onTertiaryContainer: Color(0xFFF2DAFF),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF1A1C1E),
      onBackground: Color(0xFFE2E2E6),
      surface: Color(0xFF1A1C1E),
      onSurface: Color(0xFFE2E2E6),
      surfaceVariant: Color(0xFF43474E),
      onSurfaceVariant: Color(0xFFC3C7CF),
      outline: Color(0xFF8D9199),
      onInverseSurface: Color(0xFF1A1C1E),
      inverseSurface: Color(0xFFE2E2E6),
      inversePrimary: Color(0xFF0061A4),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF9ECAFF),
      outlineVariant: Color(0xFF43474E),
      scrim: Color(0xFF000000),
    );
  }
}

class OrangeColorScheme {
  ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF8B5000),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFDCBE),
      onPrimaryContainer: Color(0xFF2C1600),
      secondary: Color(0xFF725A42),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDCBE),
      onSecondaryContainer: Color(0xFF291806),
      tertiary: Color(0xFF58633A),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFDCE8B4),
      onTertiaryContainer: Color(0xFF161E01),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF201B16),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201B16),
      surfaceVariant: Color(0xFFF2DFD1),
      onSurfaceVariant: Color(0xFF51453A),
      outline: Color(0xFF837468),
      onInverseSurface: Color(0xFFFAEFE7),
      inverseSurface: Color(0xFF352F2B),
      inversePrimary: Color(0xFFFFB870),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF8B5000),
      outlineVariant: Color(0xFFD5C3B5),
      scrim: Color(0xFF000000),
    );
  }

  ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFFB870),
      onPrimary: Color(0xFF4A2800),
      primaryContainer: Color(0xFF693C00),
      onPrimaryContainer: Color(0xFFFFDCBE),
      secondary: Color(0xFFE1C1A4),
      onSecondary: Color(0xFF402C18),
      secondaryContainer: Color(0xFF59422C),
      onSecondaryContainer: Color(0xFFFFDCBE),
      tertiary: Color(0xFFC0CC9A),
      onTertiary: Color(0xFF2B3410),
      tertiaryContainer: Color(0xFF414B24),
      onTertiaryContainer: Color(0xFFDCE8B4),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF201B16),
      onBackground: Color(0xFFEBE0D9),
      surface: Color(0xFF201B16),
      onSurface: Color(0xFFEBE0D9),
      surfaceVariant: Color(0xFF51453A),
      onSurfaceVariant: Color(0xFFD5C3B5),
      outline: Color(0xFF9D8E81),
      onInverseSurface: Color(0xFF201B16),
      inverseSurface: Color(0xFFEBE0D9),
      inversePrimary: Color(0xFF8B5000),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFFFB870),
      outlineVariant: Color(0xFF51453A),
      scrim: Color(0xFF000000),
    );
  }
}

class PinkColorScheme {
  ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFBC004B),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFD9DE),
      onPrimaryContainer: Color(0xFF400014),
      secondary: Color(0xFF75565B),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFD9DE),
      onSecondaryContainer: Color(0xFF2C1519),
      tertiary: Color(0xFF795831),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFFFDDBA),
      onTertiaryContainer: Color(0xFF2B1700),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF201A1B),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201A1B),
      surfaceVariant: Color(0xFFF3DDDF),
      onSurfaceVariant: Color(0xFF524345),
      outline: Color(0xFF847375),
      onInverseSurface: Color(0xFFFBEEEE),
      inverseSurface: Color(0xFF362F2F),
      inversePrimary: Color(0xFFFFB2BE),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFBC004B),
      outlineVariant: Color(0xFFD6C2C3),
      scrim: Color(0xFF000000),
    );
  }

  ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFFB2BE),
      onPrimary: Color(0xFF660025),
      primaryContainer: Color(0xFF900038),
      onPrimaryContainer: Color(0xFFFFD9DE),
      secondary: Color(0xFFE5BDC2),
      onSecondary: Color(0xFF43292D),
      secondaryContainer: Color(0xFF5C3F43),
      onSecondaryContainer: Color(0xFFFFD9DE),
      tertiary: Color(0xFFEBBF90),
      onTertiary: Color(0xFF452B08),
      tertiaryContainer: Color(0xFF5F411C),
      onTertiaryContainer: Color(0xFFFFDDBA),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF201A1B),
      onBackground: Color(0xFFECE0E0),
      surface: Color(0xFF201A1B),
      onSurface: Color(0xFFECE0E0),
      surfaceVariant: Color(0xFF524345),
      onSurfaceVariant: Color(0xFFD6C2C3),
      outline: Color(0xFF9F8C8E),
      onInverseSurface: Color(0xFF201A1B),
      inverseSurface: Color(0xFFECE0E0),
      inversePrimary: Color(0xFFBC004B),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFFFB2BE),
      outlineVariant: Color(0xFF524345),
      scrim: Color(0xFF000000),
    );
  }
}

class YellowColorScheme {
  ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF695F00),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFF9E534),
      onPrimaryContainer: Color(0xFF201C00),
      secondary: Color(0xFF645F41),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFEBE3BD),
      onSecondaryContainer: Color(0xFF1F1C05),
      tertiary: Color(0xFF406652),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFC2ECD3),
      onTertiaryContainer: Color(0xFF002113),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF1D1C16),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF1D1C16),
      surfaceVariant: Color(0xFFE8E2D0),
      onSurfaceVariant: Color(0xFF4A473A),
      outline: Color(0xFF7B7768),
      onInverseSurface: Color(0xFFF5F0E7),
      inverseSurface: Color(0xFF32302A),
      inversePrimary: Color(0xFFDBC90A),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF695F00),
      outlineVariant: Color(0xFFCBC6B5),
      scrim: Color(0xFF000000),
    );
  }

  ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFDBC90A),
      onPrimary: Color(0xFF363100),
      primaryContainer: Color(0xFF4F4800),
      onPrimaryContainer: Color(0xFFF9E534),
      secondary: Color(0xFFCEC7A3),
      onSecondary: Color(0xFF343117),
      secondaryContainer: Color(0xFF4B472B),
      onSecondaryContainer: Color(0xFFEBE3BD),
      tertiary: Color(0xFFA7D0B7),
      onTertiary: Color(0xFF103726),
      tertiaryContainer: Color(0xFF294E3B),
      onTertiaryContainer: Color(0xFFC2ECD3),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF1D1C16),
      onBackground: Color(0xFFE7E2D9),
      surface: Color(0xFF1D1C16),
      onSurface: Color(0xFFE7E2D9),
      surfaceVariant: Color(0xFF4A473A),
      onSurfaceVariant: Color(0xFFCBC6B5),
      outline: Color(0xFF959181),
      onInverseSurface: Color(0xFF1D1C16),
      inverseSurface: Color(0xFFE7E2D9),
      inversePrimary: Color(0xFF695F00),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFDBC90A),
      outlineVariant: Color(0xFF4A473A),
      scrim: Color(0xFF000000),
    );
  }
}
// import 'package:flutter/material.dart';

// const purpleLightColorScheme = 
// ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF6750A4),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFFEADDFF),
//   onPrimaryContainer: Color(0xFF21005D),
//   secondary: Color(0xFF625B71),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFE8DEF8),
//   onSecondaryContainer: Color(0xFF1D192B),
//   tertiary: Color(0xFF7D5260),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFFFD8E4),
//   onTertiaryContainer: Color(0xFF31111D),
//   error: Color(0xFFB3261E),
//   onError: Color(0xFFFFFFFF),
//   errorContainer: Color(0xFFF9DEDC),
//   onErrorContainer: Color(0xFF410E0B),
//   outline: Color(0xFF79747E),
//   background: Color(0xFFFFFBFE),
//   onBackground: Color(0xFF1C1B1F),
//   surface: Color(0xFFFFFBFE),
//   onSurface: Color(0xFF1C1B1F),
//   surfaceVariant: Color(0xFFE7E0EC),
//   onSurfaceVariant: Color(0xFF49454F),
//   inverseSurface: Color(0xFF313033),
//   onInverseSurface: Color(0xFFF4EFF4),
//   inversePrimary: Color(0xFFD0BCFF),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF6750A4),
//   outlineVariant: Color(0xFFCAC4D0),
//   scrim: Color(0xFF000000),
// );

// const purpleDarkColorScheme =
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFFD0BCFF),
//   onPrimary: Color(0xFF381E72),
//   primaryContainer: Color(0xFF4F378B),
//   onPrimaryContainer: Color(0xFFEADDFF),
//   secondary: Color(0xFFCCC2DC),
//   onSecondary: Color(0xFF332D41),
//   secondaryContainer: Color(0xFF4A4458),
//   onSecondaryContainer: Color(0xFFE8DEF8),
//   tertiary: Color(0xFFEFB8C8),
//   onTertiary: Color(0xFF492532),
//   tertiaryContainer: Color(0xFF633B48),
//   onTertiaryContainer: Color(0xFFFFD8E4),
//   error: Color(0xFFF2B8B5),
//   onError: Color(0xFF601410),
//   errorContainer: Color(0xFF8C1D18),
//   onErrorContainer: Color(0xFFF9DEDC),
//   outline: Color(0xFF938F99),
//   background: Color(0xFF1C1B1F),
//   onBackground: Color(0xFFE6E1E5),
//   surface: Color(0xFF1C1B1F),
//   onSurface: Color(0xFFE6E1E5),
//   surfaceVariant: Color(0xFF49454F),
//   onSurfaceVariant: Color(0xFFCAC4D0),
//   inverseSurface: Color(0xFFE6E1E5),
//   onInverseSurface: Color(0xFF313033),
//   inversePrimary: Color(0xFF6750A4),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFD0BCFF),
//   outlineVariant: Color(0xFF49454F),
//   scrim: Color(0xFF000000),
// );

// const greenLightColorScheme = 
// ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF006E1C),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFF94F990),
//   onPrimaryContainer: Color(0xFF002204),
//   secondary: Color(0xFF52634F),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFD5E8CF),
//   onSecondaryContainer: Color(0xFF111F0F),
//   tertiary: Color(0xFF38656A),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFBCEBF0),
//   onTertiaryContainer: Color(0xFF002023),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFCFDF6),
//   onBackground: Color(0xFF1A1C19),
//   surface: Color(0xFFFCFDF6),
//   onSurface: Color(0xFF1A1C19),
//   surfaceVariant: Color(0xFFDEE5D8),
//   onSurfaceVariant: Color(0xFF424940),
//   outline: Color(0xFF72796F),
//   onInverseSurface: Color(0xFFF0F1EB),
//   inverseSurface: Color(0xFF2F312D),
//   inversePrimary: Color(0xFF78DC77),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF006E1C),
//   outlineVariant: Color(0xFFC2C9BD),
//   scrim: Color(0xFF000000),
// );

// const greenDarkColorScheme =
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFF78DC77),
//   onPrimary: Color(0xFF00390A),
//   primaryContainer: Color(0xFF005313),
//   onPrimaryContainer: Color(0xFF94F990),
//   secondary: Color(0xFFBACCB3),
//   onSecondary: Color(0xFF253423),
//   secondaryContainer: Color(0xFF3B4B38),
//   onSecondaryContainer: Color(0xFFD5E8CF),
//   tertiary: Color(0xFFA0CFD4),
//   onTertiary: Color(0xFF00363B),
//   tertiaryContainer: Color(0xFF1F4D52),
//   onTertiaryContainer: Color(0xFFBCEBF0),
//   error: Color(0xFFFFB4AB),
//   errorContainer: Color(0xFF93000A),
//   onError: Color(0xFF690005),
//   onErrorContainer: Color(0xFFFFDAD6),
//   background: Color(0xFF1A1C19),
//   onBackground: Color(0xFFE2E3DD),
//   surface: Color(0xFF1A1C19),
//   onSurface: Color(0xFFE2E3DD),
//   surfaceVariant: Color(0xFF424940),
//   onSurfaceVariant: Color(0xFFC2C9BD),
//   outline: Color(0xFF8C9388),
//   onInverseSurface: Color(0xFF1A1C19),
//   inverseSurface: Color(0xFFE2E3DD),
//   inversePrimary: Color(0xFF006E1C),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF78DC77),
//   outlineVariant: Color(0xFF424940),
//   scrim: Color(0xFF000000),
// );

// const blueLightColorScheme = 
// ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF0061A4),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFFD1E4FF),
//   onPrimaryContainer: Color(0xFF001D36),
//   secondary: Color(0xFF535F70),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFD7E3F7),
//   onSecondaryContainer: Color(0xFF101C2B),
//   tertiary: Color(0xFF6B5778),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFF2DAFF),
//   onTertiaryContainer: Color(0xFF251431),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFDFCFF),
//   onBackground: Color(0xFF1A1C1E),
//   surface: Color(0xFFFDFCFF),
//   onSurface: Color(0xFF1A1C1E),
//   surfaceVariant: Color(0xFFDFE2EB),
//   onSurfaceVariant: Color(0xFF43474E),
//   outline: Color(0xFF73777F),
//   onInverseSurface: Color(0xFFF1F0F4),
//   inverseSurface: Color(0xFF2F3033),
//   inversePrimary: Color(0xFF9ECAFF),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF0061A4),
//   outlineVariant: Color(0xFFC3C7CF),
//   scrim: Color(0xFF000000),
// );

// const blueDarkColorScheme = 
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFF9ECAFF),
//   onPrimary: Color(0xFF003258),
//   primaryContainer: Color(0xFF00497D),
//   onPrimaryContainer: Color(0xFFD1E4FF),
//   secondary: Color(0xFFBBC7DB),
//   onSecondary: Color(0xFF253140),
//   secondaryContainer: Color(0xFF3B4858),
//   onSecondaryContainer: Color(0xFFD7E3F7),
//   tertiary: Color(0xFFD6BEE4),
//   onTertiary: Color(0xFF3B2948),
//   tertiaryContainer: Color(0xFF523F5F),
//   onTertiaryContainer: Color(0xFFF2DAFF),
//   error: Color(0xFFFFB4AB),
//   errorContainer: Color(0xFF93000A),
//   onError: Color(0xFF690005),
//   onErrorContainer: Color(0xFFFFDAD6),
//   background: Color(0xFF1A1C1E),
//   onBackground: Color(0xFFE2E2E6),
//   surface: Color(0xFF1A1C1E),
//   onSurface: Color(0xFFE2E2E6),
//   surfaceVariant: Color(0xFF43474E),
//   onSurfaceVariant: Color(0xFFC3C7CF),
//   outline: Color(0xFF8D9199),
//   onInverseSurface: Color(0xFF1A1C1E),
//   inverseSurface: Color(0xFFE2E2E6),
//   inversePrimary: Color(0xFF0061A4),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF9ECAFF),
//   outlineVariant: Color(0xFF43474E),
//   scrim: Color(0xFF000000),
// );

// const orangeLightColorScheme = 
// ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF8B5000),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFFFFDCBE),
//   onPrimaryContainer: Color(0xFF2C1600),
//   secondary: Color(0xFF725A42),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFFFDCBE),
//   onSecondaryContainer: Color(0xFF291806),
//   tertiary: Color(0xFF58633A),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFDCE8B4),
//   onTertiaryContainer: Color(0xFF161E01),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFFFBFF),
//   onBackground: Color(0xFF201B16),
//   surface: Color(0xFFFFFBFF),
//   onSurface: Color(0xFF201B16),
//   surfaceVariant: Color(0xFFF2DFD1),
//   onSurfaceVariant: Color(0xFF51453A),
//   outline: Color(0xFF837468),
//   onInverseSurface: Color(0xFFFAEFE7),
//   inverseSurface: Color(0xFF352F2B),
//   inversePrimary: Color(0xFFFFB870),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF8B5000),
//   outlineVariant: Color(0xFFD5C3B5),
//   scrim: Color(0xFF000000),
// );

// const orangeDarkColorScheme = 
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFFFFB870),
//   onPrimary: Color(0xFF4A2800),
//   primaryContainer: Color(0xFF693C00),
//   onPrimaryContainer: Color(0xFFFFDCBE),
//   secondary: Color(0xFFE1C1A4),
//   onSecondary: Color(0xFF402C18),
//   secondaryContainer: Color(0xFF59422C),
//   onSecondaryContainer: Color(0xFFFFDCBE),
//   tertiary: Color(0xFFC0CC9A),
//   onTertiary: Color(0xFF2B3410),
//   tertiaryContainer: Color(0xFF414B24),
//   onTertiaryContainer: Color(0xFFDCE8B4),
//   error: Color(0xFFFFB4AB),
//   errorContainer: Color(0xFF93000A),
//   onError: Color(0xFF690005),
//   onErrorContainer: Color(0xFFFFDAD6),
//   background: Color(0xFF201B16),
//   onBackground: Color(0xFFEBE0D9),
//   surface: Color(0xFF201B16),
//   onSurface: Color(0xFFEBE0D9),
//   surfaceVariant: Color(0xFF51453A),
//   onSurfaceVariant: Color(0xFFD5C3B5),
//   outline: Color(0xFF9D8E81),
//   onInverseSurface: Color(0xFF201B16),
//   inverseSurface: Color(0xFFEBE0D9),
//   inversePrimary: Color(0xFF8B5000),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFFFB870),
//   outlineVariant: Color(0xFF51453A),
//   scrim: Color(0xFF000000),
// );

// const pinkLightColorScheme = 
// ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFFBC004B),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFFFFD9DE),
//   onPrimaryContainer: Color(0xFF400014),
//   secondary: Color(0xFF75565B),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFFFD9DE),
//   onSecondaryContainer: Color(0xFF2C1519),
//   tertiary: Color(0xFF795831),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFFFDDBA),
//   onTertiaryContainer: Color(0xFF2B1700),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFFFBFF),
//   onBackground: Color(0xFF201A1B),
//   surface: Color(0xFFFFFBFF),
//   onSurface: Color(0xFF201A1B),
//   surfaceVariant: Color(0xFFF3DDDF),
//   onSurfaceVariant: Color(0xFF524345),
//   outline: Color(0xFF847375),
//   onInverseSurface: Color(0xFFFBEEEE),
//   inverseSurface: Color(0xFF362F2F),
//   inversePrimary: Color(0xFFFFB2BE),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFBC004B),
//   outlineVariant: Color(0xFFD6C2C3),
//   scrim: Color(0xFF000000),
// );

// const pinkDarkColorScheme = 
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFFFFB2BE),
//   onPrimary: Color(0xFF660025),
//   primaryContainer: Color(0xFF900038),
//   onPrimaryContainer: Color(0xFFFFD9DE),
//   secondary: Color(0xFFE5BDC2),
//   onSecondary: Color(0xFF43292D),
//   secondaryContainer: Color(0xFF5C3F43),
//   onSecondaryContainer: Color(0xFFFFD9DE),
//   tertiary: Color(0xFFEBBF90),
//   onTertiary: Color(0xFF452B08),
//   tertiaryContainer: Color(0xFF5F411C),
//   onTertiaryContainer: Color(0xFFFFDDBA),
//   error: Color(0xFFFFB4AB),
//   errorContainer: Color(0xFF93000A),
//   onError: Color(0xFF690005),
//   onErrorContainer: Color(0xFFFFDAD6),
//   background: Color(0xFF201A1B),
//   onBackground: Color(0xFFECE0E0),
//   surface: Color(0xFF201A1B),
//   onSurface: Color(0xFFECE0E0),
//   surfaceVariant: Color(0xFF524345),
//   onSurfaceVariant: Color(0xFFD6C2C3),
//   outline: Color(0xFF9F8C8E),
//   onInverseSurface: Color(0xFF201A1B),
//   inverseSurface: Color(0xFFECE0E0),
//   inversePrimary: Color(0xFFBC004B),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFFFB2BE),
//   outlineVariant: Color(0xFF524345),
//   scrim: Color(0xFF000000),
// );

// const yellowLightColorScheme = 
// ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF695F00),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFFF9E534),
//   onPrimaryContainer: Color(0xFF201C00),
//   secondary: Color(0xFF645F41),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFEBE3BD),
//   onSecondaryContainer: Color(0xFF1F1C05),
//   tertiary: Color(0xFF406652),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFC2ECD3),
//   onTertiaryContainer: Color(0xFF002113),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFFFBFF),
//   onBackground: Color(0xFF1D1C16),
//   surface: Color(0xFFFFFBFF),
//   onSurface: Color(0xFF1D1C16),
//   surfaceVariant: Color(0xFFE8E2D0),
//   onSurfaceVariant: Color(0xFF4A473A),
//   outline: Color(0xFF7B7768),
//   onInverseSurface: Color(0xFFF5F0E7),
//   inverseSurface: Color(0xFF32302A),
//   inversePrimary: Color(0xFFDBC90A),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFF695F00),
//   outlineVariant: Color(0xFFCBC6B5),
//   scrim: Color(0xFF000000),
// );

// const yellowDarkColorScheme = 
// ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFFDBC90A),
//   onPrimary: Color(0xFF363100),
//   primaryContainer: Color(0xFF4F4800),
//   onPrimaryContainer: Color(0xFFF9E534),
//   secondary: Color(0xFFCEC7A3),
//   onSecondary: Color(0xFF343117),
//   secondaryContainer: Color(0xFF4B472B),
//   onSecondaryContainer: Color(0xFFEBE3BD),
//   tertiary: Color(0xFFA7D0B7),
//   onTertiary: Color(0xFF103726),
//   tertiaryContainer: Color(0xFF294E3B),
//   onTertiaryContainer: Color(0xFFC2ECD3),
//   error: Color(0xFFFFB4AB),
//   errorContainer: Color(0xFF93000A),
//   onError: Color(0xFF690005),
//   onErrorContainer: Color(0xFFFFDAD6),
//   background: Color(0xFF1D1C16),
//   onBackground: Color(0xFFE7E2D9),
//   surface: Color(0xFF1D1C16),
//   onSurface: Color(0xFFE7E2D9),
//   surfaceVariant: Color(0xFF4A473A),
//   onSurfaceVariant: Color(0xFFCBC6B5),
//   outline: Color(0xFF959181),
//   onInverseSurface: Color(0xFF1D1C16),
//   inverseSurface: Color(0xFFE7E2D9),
//   inversePrimary: Color(0xFF695F00),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFDBC90A),
//   outlineVariant: Color(0xFF4A473A),
//   scrim: Color(0xFF000000),
// );

// class MaterialTheme {
//   const MaterialTheme();

//   static MaterialScheme lightScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(4284831119),
//       surfaceTint: Color(4284831119),
//       onPrimary: Color(4294967295),
//       primaryContainer: Color(4293516799),
//       onPrimaryContainer: Color(4280291399),
//       secondary: Color(4284636017),
//       onSecondary: Color(4294967295),
//       secondaryContainer: Color(4293451512),
//       onSecondaryContainer: Color(4280162603),
//       tertiary: Color(4286468704),
//       onTertiary: Color(4294967295),
//       tertiaryContainer: Color(4294957539),
//       onTertiaryContainer: Color(4281405469),
//       error: Color(4290386458),
//       onError: Color(4294967295),
//       errorContainer: Color(4294957782),
//       onErrorContainer: Color(4282449922),
//       background: Color(4294834175),
//       onBackground: Color(4280097568),
//       surface: Color(4294834175),
//       onSurface: Color(4280097568),
//       surfaceVariant: Color(4293386475),
//       onSurfaceVariant: Color(4282991950),
//       outline: Color(4286215551),
//       outlineVariant: Color(4291478735),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4281478965),
//       inverseOnSurface: Color(4294307831),
//       inversePrimary: Color(4291804670),
//       primaryFixed: Color(4293516799),
//       onPrimaryFixed: Color(4280291399),
//       primaryFixedDim: Color(4291804670),
//       onPrimaryFixedVariant: Color(4283252085),
//       secondaryFixed: Color(4293451512),
//       onSecondaryFixed: Color(4280162603),
//       secondaryFixedDim: Color(4291543771),
//       onSecondaryFixedVariant: Color(4283057240),
//       tertiaryFixed: Color(4294957539),
//       onTertiaryFixed: Color(4281405469),
//       tertiaryFixedDim: Color(4293900488),
//       onTertiaryFixedVariant: Color(4284693320),
//       surfaceDim: Color(4292794592),
//       surfaceBright: Color(4294834175),
//       surfaceContainerLowest: Color(4294967295),
//       surfaceContainerLow: Color(4294505210),
//       surfaceContainer: Color(4294110452),
//       surfaceContainerHigh: Color(4293715694),
//       surfaceContainerHighest: Color(4293320937),
//     );
//   }

//   ThemeData light() {
//     return theme(lightScheme().toColorScheme());
//   }

//   static MaterialScheme lightMediumContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(4282988913),
//       surfaceTint: Color(4284831119),
//       onPrimary: Color(4294967295),
//       primaryContainer: Color(4286278567),
//       onPrimaryContainer: Color(4294967295),
//       secondary: Color(4282794068),
//       onSecondary: Color(4294967295),
//       secondaryContainer: Color(4286083463),
//       onSecondaryContainer: Color(4294967295),
//       tertiary: Color(4284430148),
//       onTertiary: Color(4294967295),
//       tertiaryContainer: Color(4288046966),
//       onTertiaryContainer: Color(4294967295),
//       error: Color(4287365129),
//       onError: Color(4294967295),
//       errorContainer: Color(4292490286),
//       onErrorContainer: Color(4294967295),
//       background: Color(4294834175),
//       onBackground: Color(4280097568),
//       surface: Color(4294834175),
//       onSurface: Color(4280097568),
//       surfaceVariant: Color(4293386475),
//       onSurfaceVariant: Color(4282728778),
//       outline: Color(4284570983),
//       outlineVariant: Color(4286413187),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4281478965),
//       inverseOnSurface: Color(4294307831),
//       inversePrimary: Color(4291804670),
//       primaryFixed: Color(4286278567),
//       onPrimaryFixed: Color(4294967295),
//       primaryFixedDim: Color(4284633996),
//       onPrimaryFixedVariant: Color(4294967295),
//       secondaryFixed: Color(4286083463),
//       onSecondaryFixed: Color(4294967295),
//       secondaryFixedDim: Color(4284438894),
//       onSecondaryFixedVariant: Color(4294967295),
//       tertiaryFixed: Color(4288046966),
//       onTertiaryFixed: Color(4294967295),
//       tertiaryFixedDim: Color(4286271326),
//       onTertiaryFixedVariant: Color(4294967295),
//       surfaceDim: Color(4292794592),
//       surfaceBright: Color(4294834175),
//       surfaceContainerLowest: Color(4294967295),
//       surfaceContainerLow: Color(4294505210),
//       surfaceContainer: Color(4294110452),
//       surfaceContainerHigh: Color(4293715694),
//       surfaceContainerHighest: Color(4293320937),
//     );
//   }

//   ThemeData lightMediumContrast() {
//     return theme(lightMediumContrastScheme().toColorScheme());
//   }

//   static MaterialScheme lightHighContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(4280751950),
//       surfaceTint: Color(4284831119),
//       onPrimary: Color(4294967295),
//       primaryContainer: Color(4282988913),
//       onPrimaryContainer: Color(4294967295),
//       secondary: Color(4280557362),
//       onSecondary: Color(4294967295),
//       secondaryContainer: Color(4282794068),
//       onSecondaryContainer: Color(4294967295),
//       tertiary: Color(4281931556),
//       onTertiary: Color(4294967295),
//       tertiaryContainer: Color(4284430148),
//       onTertiaryContainer: Color(4294967295),
//       error: Color(4283301890),
//       onError: Color(4294967295),
//       errorContainer: Color(4287365129),
//       onErrorContainer: Color(4294967295),
//       background: Color(4294834175),
//       onBackground: Color(4280097568),
//       surface: Color(4294834175),
//       onSurface: Color(4278190080),
//       surfaceVariant: Color(4293386475),
//       onSurfaceVariant: Color(4280623915),
//       outline: Color(4282728778),
//       outlineVariant: Color(4282728778),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4281478965),
//       inverseOnSurface: Color(4294967295),
//       inversePrimary: Color(4294043903),
//       primaryFixed: Color(4282988913),
//       onPrimaryFixed: Color(4294967295),
//       primaryFixedDim: Color(4281475929),
//       onPrimaryFixedVariant: Color(4294967295),
//       secondaryFixed: Color(4282794068),
//       onSecondaryFixed: Color(4294967295),
//       secondaryFixedDim: Color(4281281085),
//       onSecondaryFixedVariant: Color(4294967295),
//       tertiaryFixed: Color(4284430148),
//       onTertiaryFixed: Color(4294967295),
//       tertiaryFixedDim: Color(4282720558),
//       onTertiaryFixedVariant: Color(4294967295),
//       surfaceDim: Color(4292794592),
//       surfaceBright: Color(4294834175),
//       surfaceContainerLowest: Color(4294967295),
//       surfaceContainerLow: Color(4294505210),
//       surfaceContainer: Color(4294110452),
//       surfaceContainerHigh: Color(4293715694),
//       surfaceContainerHighest: Color(4293320937),
//     );
//   }

//   ThemeData lightHighContrast() {
//     return theme(lightHighContrastScheme().toColorScheme());
//   }

//   static MaterialScheme darkScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(4291804670),
//       surfaceTint: Color(4291804670),
//       onPrimary: Color(4281739101),
//       primaryContainer: Color(4283252085),
//       onPrimaryContainer: Color(4293516799),
//       secondary: Color(4291543771),
//       onSecondary: Color(4281544001),
//       secondaryContainer: Color(4283057240),
//       onSecondaryContainer: Color(4293451512),
//       tertiary: Color(4293900488),
//       onTertiary: Color(4283049266),
//       tertiaryContainer: Color(4284693320),
//       onTertiaryContainer: Color(4294957539),
//       error: Color(4294948011),
//       onError: Color(4285071365),
//       errorContainer: Color(4287823882),
//       onErrorContainer: Color(4294957782),
//       background: Color(4279505432),
//       onBackground: Color(4293320937),
//       surface: Color(4279505432),
//       onSurface: Color(4293320937),
//       surfaceVariant: Color(4282991950),
//       onSurfaceVariant: Color(4291478735),
//       outline: Color(4287926169),
//       outlineVariant: Color(4282991950),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4293320937),
//       inverseOnSurface: Color(4281478965),
//       inversePrimary: Color(4284831119),
//       primaryFixed: Color(4293516799),
//       onPrimaryFixed: Color(4280291399),
//       primaryFixedDim: Color(4291804670),
//       onPrimaryFixedVariant: Color(4283252085),
//       secondaryFixed: Color(4293451512),
//       onSecondaryFixed: Color(4280162603),
//       secondaryFixedDim: Color(4291543771),
//       onSecondaryFixedVariant: Color(4283057240),
//       tertiaryFixed: Color(4294957539),
//       onTertiaryFixed: Color(4281405469),
//       tertiaryFixedDim: Color(4293900488),
//       onTertiaryFixedVariant: Color(4284693320),
//       surfaceDim: Color(4279505432),
//       surfaceBright: Color(4282071102),
//       surfaceContainerLowest: Color(4279176467),
//       surfaceContainerLow: Color(4280097568),
//       surfaceContainer: Color(4280360740),
//       surfaceContainerHigh: Color(4281018671),
//       surfaceContainerHighest: Color(4281742394),
//     );
//   }

//   ThemeData dark() {
//     return theme(darkScheme().toColorScheme());
//   }

//   static MaterialScheme darkMediumContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(4292067839),
//       surfaceTint: Color(4291804670),
//       onPrimary: Color(4279961922),
//       primaryContainer: Color(4288186309),
//       onPrimaryContainer: Color(4278190080),
//       secondary: Color(4291872736),
//       onSecondary: Color(4279767845),
//       secondaryContainer: Color(4287991204),
//       onSecondaryContainer: Color(4278190080),
//       tertiary: Color(4294229196),
//       onTertiary: Color(4281010968),
//       tertiaryContainer: Color(4290085778),
//       onTertiaryContainer: Color(4278190080),
//       error: Color(4294949553),
//       onError: Color(4281794561),
//       errorContainer: Color(4294923337),
//       onErrorContainer: Color(4278190080),
//       background: Color(4279505432),
//       onBackground: Color(4293320937),
//       surface: Color(4279505432),
//       onSurface: Color(4294965759),
//       surfaceVariant: Color(4282991950),
//       onSurfaceVariant: Color(4291741908),
//       outline: Color(4289110443),
//       outlineVariant: Color(4287005067),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4293320937),
//       inverseOnSurface: Color(4281018671),
//       inversePrimary: Color(4283318135),
//       primaryFixed: Color(4293516799),
//       onPrimaryFixed: Color(4279632701),
//       primaryFixedDim: Color(4291804670),
//       onPrimaryFixedVariant: Color(4282133859),
//       secondaryFixed: Color(4293451512),
//       onSecondaryFixed: Color(4279438880),
//       secondaryFixedDim: Color(4291543771),
//       onSecondaryFixedVariant: Color(4281938759),
//       tertiaryFixed: Color(4294957539),
//       onTertiaryFixed: Color(4280550931),
//       tertiaryFixedDim: Color(4293900488),
//       onTertiaryFixedVariant: Color(4283444024),
//       surfaceDim: Color(4279505432),
//       surfaceBright: Color(4282071102),
//       surfaceContainerLowest: Color(4279176467),
//       surfaceContainerLow: Color(4280097568),
//       surfaceContainer: Color(4280360740),
//       surfaceContainerHigh: Color(4281018671),
//       surfaceContainerHighest: Color(4281742394),
//     );
//   }

//   ThemeData darkMediumContrast() {
//     return theme(darkMediumContrastScheme().toColorScheme());
//   }

//   static MaterialScheme darkHighContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(4294965759),
//       surfaceTint: Color(4291804670),
//       onPrimary: Color(4278190080),
//       primaryContainer: Color(4292067839),
//       onPrimaryContainer: Color(4278190080),
//       secondary: Color(4294965759),
//       onSecondary: Color(4278190080),
//       secondaryContainer: Color(4291872736),
//       onSecondaryContainer: Color(4278190080),
//       tertiary: Color(4294965753),
//       onTertiary: Color(4278190080),
//       tertiaryContainer: Color(4294229196),
//       onTertiaryContainer: Color(4278190080),
//       error: Color(4294965753),
//       onError: Color(4278190080),
//       errorContainer: Color(4294949553),
//       onErrorContainer: Color(4278190080),
//       background: Color(4279505432),
//       onBackground: Color(4293320937),
//       surface: Color(4279505432),
//       onSurface: Color(4294967295),
//       surfaceVariant: Color(4282991950),
//       onSurfaceVariant: Color(4294965759),
//       outline: Color(4291741908),
//       outlineVariant: Color(4291741908),
//       shadow: Color(4278190080),
//       scrim: Color(4278190080),
//       inverseSurface: Color(4293320937),
//       inverseOnSurface: Color(4278190080),
//       inversePrimary: Color(4281278550),
//       primaryFixed: Color(4293780223),
//       onPrimaryFixed: Color(4278190080),
//       primaryFixedDim: Color(4292067839),
//       onPrimaryFixedVariant: Color(4279961922),
//       secondaryFixed: Color(4293714941),
//       onSecondaryFixed: Color(4278190080),
//       secondaryFixedDim: Color(4291872736),
//       onSecondaryFixedVariant: Color(4279767845),
//       tertiaryFixed: Color(4294959079),
//       onTertiaryFixed: Color(4278190080),
//       tertiaryFixedDim: Color(4294229196),
//       onTertiaryFixedVariant: Color(4281010968),
//       surfaceDim: Color(4279505432),
//       surfaceBright: Color(4282071102),
//       surfaceContainerLowest: Color(4279176467),
//       surfaceContainerLow: Color(4280097568),
//       surfaceContainer: Color(4280360740),
//       surfaceContainerHigh: Color(4281018671),
//       surfaceContainerHighest: Color(4281742394),
//     );
//   }

//   ThemeData darkHighContrast() {
//     return theme(darkHighContrastScheme().toColorScheme());
//   }


//   ThemeData theme(ColorScheme colorScheme) => ThemeData(
//      useMaterial3: true,
//      brightness: colorScheme.brightness,
//      colorScheme: colorScheme,
//      scaffoldBackgroundColor: colorScheme.background,
//      canvasColor: colorScheme.surface,
//   );


//   List<ExtendedColor> get extendedColors => [
//   ];
// }

// class MaterialScheme {
//   const MaterialScheme({
//     required this.brightness,
//     required this.primary, 
//     required this.surfaceTint, 
//     required this.onPrimary, 
//     required this.primaryContainer, 
//     required this.onPrimaryContainer, 
//     required this.secondary, 
//     required this.onSecondary, 
//     required this.secondaryContainer, 
//     required this.onSecondaryContainer, 
//     required this.tertiary, 
//     required this.onTertiary, 
//     required this.tertiaryContainer, 
//     required this.onTertiaryContainer, 
//     required this.error, 
//     required this.onError, 
//     required this.errorContainer, 
//     required this.onErrorContainer, 
//     required this.background, 
//     required this.onBackground, 
//     required this.surface, 
//     required this.onSurface, 
//     required this.surfaceVariant, 
//     required this.onSurfaceVariant, 
//     required this.outline, 
//     required this.outlineVariant, 
//     required this.shadow, 
//     required this.scrim, 
//     required this.inverseSurface, 
//     required this.inverseOnSurface, 
//     required this.inversePrimary, 
//     required this.primaryFixed, 
//     required this.onPrimaryFixed, 
//     required this.primaryFixedDim, 
//     required this.onPrimaryFixedVariant, 
//     required this.secondaryFixed, 
//     required this.onSecondaryFixed, 
//     required this.secondaryFixedDim, 
//     required this.onSecondaryFixedVariant, 
//     required this.tertiaryFixed, 
//     required this.onTertiaryFixed, 
//     required this.tertiaryFixedDim, 
//     required this.onTertiaryFixedVariant, 
//     required this.surfaceDim, 
//     required this.surfaceBright, 
//     required this.surfaceContainerLowest, 
//     required this.surfaceContainerLow, 
//     required this.surfaceContainer, 
//     required this.surfaceContainerHigh, 
//     required this.surfaceContainerHighest, 
//   });

//   final Brightness brightness;
//   final Color primary;
//   final Color surfaceTint;
//   final Color onPrimary;
//   final Color primaryContainer;
//   final Color onPrimaryContainer;
//   final Color secondary;
//   final Color onSecondary;
//   final Color secondaryContainer;
//   final Color onSecondaryContainer;
//   final Color tertiary;
//   final Color onTertiary;
//   final Color tertiaryContainer;
//   final Color onTertiaryContainer;
//   final Color error;
//   final Color onError;
//   final Color errorContainer;
//   final Color onErrorContainer;
//   final Color background;
//   final Color onBackground;
//   final Color surface;
//   final Color onSurface;
//   final Color surfaceVariant;
//   final Color onSurfaceVariant;
//   final Color outline;
//   final Color outlineVariant;
//   final Color shadow;
//   final Color scrim;
//   final Color inverseSurface;
//   final Color inverseOnSurface;
//   final Color inversePrimary;
//   final Color primaryFixed;
//   final Color onPrimaryFixed;
//   final Color primaryFixedDim;
//   final Color onPrimaryFixedVariant;
//   final Color secondaryFixed;
//   final Color onSecondaryFixed;
//   final Color secondaryFixedDim;
//   final Color onSecondaryFixedVariant;
//   final Color tertiaryFixed;
//   final Color onTertiaryFixed;
//   final Color tertiaryFixedDim;
//   final Color onTertiaryFixedVariant;
//   final Color surfaceDim;
//   final Color surfaceBright;
//   final Color surfaceContainerLowest;
//   final Color surfaceContainerLow;
//   final Color surfaceContainer;
//   final Color surfaceContainerHigh;
//   final Color surfaceContainerHighest;
// }

// extension MaterialSchemeUtils on MaterialScheme {
//   ColorScheme toColorScheme() {
//     return ColorScheme(
//       brightness: brightness,
//       primary: primary,
//       onPrimary: onPrimary,
//       primaryContainer: primaryContainer,
//       onPrimaryContainer: onPrimaryContainer,
//       secondary: secondary,
//       onSecondary: onSecondary,
//       secondaryContainer: secondaryContainer,
//       onSecondaryContainer: onSecondaryContainer,
//       tertiary: tertiary,
//       onTertiary: onTertiary,
//       tertiaryContainer: tertiaryContainer,
//       onTertiaryContainer: onTertiaryContainer,
//       error: error,
//       onError: onError,
//       errorContainer: errorContainer,
//       onErrorContainer: onErrorContainer,
//       background: background,
//       onBackground: onBackground,
//       surface: surface,
//       onSurface: onSurface,
//       surfaceVariant: surfaceVariant,
//       onSurfaceVariant: onSurfaceVariant,
//       outline: outline,
//       outlineVariant: outlineVariant,
//       shadow: shadow,
//       scrim: scrim,
//       inverseSurface: inverseSurface,
//       onInverseSurface: inverseOnSurface,
//       inversePrimary: inversePrimary,
//     );
//   }
// }

// class ExtendedColor {
//   final Color seed, value;
//   final ColorFamily light;
//   final ColorFamily lightHighContrast;
//   final ColorFamily lightMediumContrast;
//   final ColorFamily dark;
//   final ColorFamily darkHighContrast;
//   final ColorFamily darkMediumContrast;

//   const ExtendedColor({
//     required this.seed,
//     required this.value,
//     required this.light,
//     required this.lightHighContrast,
//     required this.lightMediumContrast,
//     required this.dark,
//     required this.darkHighContrast,
//     required this.darkMediumContrast,
//   });
// }

// class ColorFamily {
//   const ColorFamily({
//     required this.color,
//     required this.onColor,
//     required this.colorContainer,
//     required this.onColorContainer,
//   });

//   final Color color;
//   final Color onColor;
//   final Color colorContainer;
//   final Color onColorContainer;
// }
