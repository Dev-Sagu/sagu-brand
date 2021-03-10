import 'package:example/pages/example2.dart';
import 'package:example/pages/preferred.size.page.dart';
import 'package:example/pages/testing.theme.dart';
import 'package:flutter/material.dart';
import 'package:sagu_brand/brand.dart';

import 'pages/main/main.view.page.dart';

void main() {
  runApp(BrandApp());
}

class BrandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildShrineTheme(),
      home: MyHomePage(),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _saguColorScheme,
    // toggleableActiveColor: red,
    accentColor: Sagu.complementary,
    primaryColor: primary,
    // hoverColor: Colors.orange,

    // dialogBackgroundColor: Sagu.dark,
    // dialogTheme:
    //     DialogTheme(contentTextStyle: TextStyle(color: Colors.white54)),
    // scaffoldBackgroundColor: bgColor,
    // cardColor: shrineBackgroundWhite,
    textSelectionTheme: TextSelectionThemeData(selectionColor: red),
    // textSelectionColor: red,
    errorColor: error,
    buttonTheme: const ButtonThemeData(
      colorScheme: _saguColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
    appBarTheme: base.appBarTheme.copyWith(
      iconTheme: base.iconTheme.copyWith(color: Colors.white),
    ),
    // timePickerTheme: TimePickerThemeData(),
    sliderTheme: SliderThemeData(
      // activeTickMarkColor: secondaryVariant,
      // activeTrackColor: secondary,
      // thumbColor: secondaryVariant,
      // inactiveTrackColor: secondary.withOpacity(0.6),
      valueIndicatorTextStyle: TextStyle(color: Colors.white),
      valueIndicatorColor: primary,
    ),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: primary);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
          // fontFamily: 'Rubik',
          // displayColor: Sagu.complementary,
          // bodyColor: onPrimary,

          );
}

const ColorScheme _saguColorScheme = ColorScheme(
  primary: primary,
  primaryVariant: primaryVariant,
  secondary: secondary,
  secondaryVariant: secondaryVariant,
  surface: surface,
  background: background,
  error: error,
  onPrimary: onPrimary,
  onSecondary: onSecondary,
  onSurface: onSurface,
  onBackground: onBackground,
  onError: onError,
  brightness: Brightness.light,
);

// const Color primary = Color(0xff8b99b2);
const Color primary = Color(0xff011638);
const Color primaryVariant = Color(0xff163666);
const Color secondary = Color(0xffFF2A2A);
const Color secondaryVariant = Color(0xffc3000d);
const Color surface = Color(0xffe3e6ec);
// const Color surface = Color(0xffFFFFFF);
const Color background = Color(0xffFAFAFC);
const Color error = Color(0xffFC913A);
const Color onPrimary = Color(0xffE3E6EC);
// const Color onPrimary = Color(0xffE3E6EC);
const Color onSecondary = Color(0xffFFEAEE);
const Color onSurface = secondary;
// const Color onSurface = Color(0xff131313);
const Color onBackground = Color(0xff131313);
const Color onError = Color(0xff4d0000);
// const Color bgColor = Color(0xffFAFAFC);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
// const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;

const int _color_1070_1 = 0xFF011638;
const MaterialColor shrinePrimary = const MaterialColor(
  _color_1070_1,
  <int, Color>{
    050: Color(0xffe3e6ec),
    100: Color(0xffb8c1d1),
    200: Color(0xff8b99b2),
    300: Color(0xff617293),
    400: Color(0xff40577f),
    500: Color(0xff1c3d6d),
    600: Color(0xff163666),
    700: Color(0xff0c2e5b),
    800: Color(0xff05254f),
    900: Color(_color_1070_1),
  },
);

const int _color_1658_4 = 0XFFE71D36;
const MaterialColor red = const MaterialColor(
  _color_1658_4,
  <int, Color>{
    050: const Color(0xffffeaee),
    100: const Color(0xffffcad2),
    200: const Color(0xfff0949a),
    300: const Color(0xffe66a72),
    400: const Color(0xfff14450),
    500: const Color(0xfff62a35),
    600: const Color(_color_1658_4),
    700: const Color(0xffd50d2e),
    800: const Color(0xffc80027),
    900: const Color(0xffba001a),
  },
);

const Color shrineRed50 = Color(0xffffeaee);
const Color shrineRed100 = Color(0xffffcad2);
const Color shrineRed300 = Color(0xffe66a72);

const Color shrineRed900 = Color(0xffba001a);
