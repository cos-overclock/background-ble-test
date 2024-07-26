import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283063442),
      surfaceTint: Color(4283063442),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292600319),
      onPrimaryContainer: Color(4278196043),
      secondary: Color(4283981426),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292731385),
      onSecondaryContainer: Color(4279638828),
      tertiary: Color(4285813872),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294956792),
      onTertiaryContainer: Color(4281012779),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      onSurfaceVariant: Color(4282730063),
      outline: Color(4285888128),
      outlineVariant: Color(4291151568),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290037247),
      primaryFixed: Color(4292600319),
      onPrimaryFixed: Color(4278196043),
      primaryFixedDim: Color(4290037247),
      onPrimaryFixedVariant: Color(4281484408),
      secondaryFixed: Color(4292731385),
      onSecondaryFixed: Color(4279638828),
      secondaryFixedDim: Color(4290889437),
      onSecondaryFixedVariant: Color(4282467929),
      tertiaryFixed: Color(4294956792),
      onTertiaryFixed: Color(4281012779),
      tertiaryFixedDim: Color(4293049308),
      onTertiaryFixedVariant: Color(4284104024),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293124841),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281221236),
      surfaceTint: Color(4283063442),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284576682),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282204757),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285494408),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283840852),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287326855),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      onSurfaceVariant: Color(4282466891),
      outline: Color(4284309351),
      outlineVariant: Color(4286151299),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290037247),
      primaryFixed: Color(4284576682),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282931855),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285494408),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283849583),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287326855),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285616750),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293124841),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278722386),
      surfaceTint: Color(4283063442),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281221236),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280033843),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282204757),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281538866),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283840852),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294637823),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280427563),
      outline: Color(4282466891),
      outlineVariant: Color(4282466891),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4293454847),
      primaryFixed: Color(4281221236),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279642717),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282204757),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280757310),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283840852),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282262333),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293124841),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290037247),
      surfaceTint: Color(4290037247),
      onPrimary: Color(4279905888),
      primaryContainer: Color(4281484408),
      onPrimaryContainer: Color(4292600319),
      secondary: Color(4290889437),
      onSecondary: Color(4280954946),
      secondaryContainer: Color(4282467929),
      onSecondaryContainer: Color(4292731385),
      tertiary: Color(4293049308),
      onTertiary: Color(4282525505),
      tertiaryContainer: Color(4284104024),
      onTertiaryContainer: Color(4294956792),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279374616),
      onSurface: Color(4293124841),
      onSurfaceVariant: Color(4291151568),
      outline: Color(4287598746),
      outlineVariant: Color(4282730063),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124841),
      inversePrimary: Color(4283063442),
      primaryFixed: Color(4292600319),
      onPrimaryFixed: Color(4278196043),
      primaryFixedDim: Color(4290037247),
      onPrimaryFixedVariant: Color(4281484408),
      secondaryFixed: Color(4292731385),
      onSecondaryFixed: Color(4279638828),
      secondaryFixedDim: Color(4290889437),
      onSecondaryFixedVariant: Color(4282467929),
      tertiaryFixed: Color(4294956792),
      onTertiaryFixed: Color(4281012779),
      tertiaryFixedDim: Color(4293049308),
      onTertiaryFixedVariant: Color(4284104024),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281545786),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290431487),
      surfaceTint: Color(4290037247),
      onPrimary: Color(4278195007),
      primaryContainer: Color(4286418888),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291152609),
      onSecondary: Color(4279244326),
      secondaryContainer: Color(4287336613),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293312480),
      onTertiary: Color(4280618277),
      tertiaryContainer: Color(4289300132),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294769407),
      onSurfaceVariant: Color(4291480276),
      outline: Color(4288783020),
      outlineVariant: Color(4286743180),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124841),
      inversePrimary: Color(4281550458),
      primaryFixed: Color(4292600319),
      onPrimaryFixed: Color(4278193716),
      primaryFixedDim: Color(4290037247),
      onPrimaryFixedVariant: Color(4280365927),
      secondaryFixed: Color(4292731385),
      onSecondaryFixed: Color(4278915105),
      secondaryFixedDim: Color(4290889437),
      onSecondaryFixedVariant: Color(4281349704),
      tertiaryFixed: Color(4294956792),
      onTertiaryFixed: Color(4280223776),
      tertiaryFixedDim: Color(4293049308),
      onTertiaryFixedVariant: Color(4282920263),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281545786),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294769407),
      surfaceTint: Color(4290037247),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290431487),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294769407),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291152609),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293312480),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294769407),
      outline: Color(4291480276),
      outlineVariant: Color(4291480276),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124841),
      inversePrimary: Color(4279379802),
      primaryFixed: Color(4292994815),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290431487),
      onPrimaryFixedVariant: Color(4278195007),
      secondaryFixed: Color(4292994814),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291152609),
      onSecondaryFixedVariant: Color(4279244326),
      tertiaryFixed: Color(4294958584),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293312480),
      onTertiaryFixedVariant: Color(4280618277),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281545786),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
