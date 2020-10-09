import 'package:flutter/material.dart';

class Sagu{

  static const int primaryOnErrorValue = 0xFF;
  static const Color scaffoldColor = Color(0xfffafafc);

  static const int _primaryValue = 0xFFFF4E50;
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50  : Color(0xffffebef),
      100 : Color(0xffffced4),
      200 : Color(0xfff99a9c),
      300 : Color(0xfff37275),
      400 : Color(_primaryValue),
      500 : Color(0xffff3934),
      600 : Color(0xfff72e35),
      700 : Color(0xffe4222f),
      800 : Color(0xffd71727),
      900 : Color(0xffc8011a),
    } 
  );

  static const _secondaryValue = 0xff252C41;
  static const MaterialColor secondary = MaterialColor(
    _secondaryValue,
    <int,Color>{
      50 : Color(0xffebedff),
      100: Color(0xffccd5eb),
      200: Color(0xffb1b8d3),
      300: Color(0xff949cbb),
      400: Color(0xff7e87a8),
      500: Color(0xff687397),
      600: Color(0xff5a6586),
      700: Color(0xff48526f),
      800: Color(0xff384059),
      900: Color(_secondaryValue),
    }
  );
  static const _complementaryValue = 0xff58C9B9;
  static const MaterialColor complementary = MaterialColor(
    _complementaryValue,
    <int,Color>{
      50 : Color(0xffe2f5f4),
      100: Color(0xffb7e7e1),
      200: Color(0xff89d9ce),
      300: Color(_complementaryValue),
      400: Color(0xff33bcaa),
      500: Color(0xff1fae9a),
      600: Color(0xff1ca08c),
      700: Color(0xff188f7b),
      800: Color(0xff157f6c),
      900: Color(0xff10614f),
    }
  );
  static const _darkValue = 0xff131313;
  static const MaterialColor dark = MaterialColor(
    _darkValue,
    <int,Color>{
      50 : Color(0xfff7f7f7),
      100: Color(0xffeeeeee),
      200: Color(0xffe3e3e3),
      300: Color(0xffd1d1d1),
      400: Color(0xffacacac),
      500: Color(0xff8b8b8b),
      600: Color(0xff646464),
      700: Color(0xff515151),
      800: Color(0xff333333),
      900: Color(_darkValue),
    }
  );
  static const _orangeValue = 0xffFC913A;
  static const MaterialColor orange = MaterialColor(
    _orangeValue,
    <int,Color>{
      50 : Color(0xfffff3e3),
      100: Color(0xffffe1ba),
      200: Color(0xffffce8f),
      300: Color(0xffffb965),
      400: Color(0xffffaa4a),
      500: Color(0xffff9d3d),
      600: Color(_orangeValue),
      700: Color(0xfff48237),
      800: Color(0xffed7434),
      900: Color(0xffe15e31),
    }
  );
  static const List<Color> drop1 = [
    Color(0xffF1404B),
    Color(0xffDDDFE6),
    Color(0xffF4F5F9),
    Color(0xff252C41),
  ];

  static const List<Color> drop2 = [
    Color(0xffff4e50),
    Color(0xfffc913a),
    Color(0xfff9d423),
    Color(0xffede574),
  ];
    
  static const List<Color> drop3 = [
    Color(0xff011638),
    Color(0xff2e294e),
    Color(0xff9055a2),
    Color(0xffd499b9),
  ];

  static const List<Color> drop4 = [
    Color(0xff56445d),
    Color(0xff548687),
    Color(0xff8fbc94),
    Color(0xffc5e99b),
  ];

  static const linear1 = [
    Color(0xffFF53C4),
    Color(0xff590078),
  ];

  static const linear2 = [
    Color(0xff062FA9),
    Color(0xff7E38FF),
  ];

  static const linear3 = [
    Color(0xff0B7B6B),
    Color(0xff58C9B9),
  ];

  static const linear4 = [
    Color(0xffFF2A2A),
    Color(0xffFC913A),
  ];

  static const linear5 = [
    Color(0xffFF2A2A),
    Color(0xff252C41),
  ];

  static const linear6 = [
    Color(0xff081A4E),
    Color(0xff252C41),
  ];
  static const linear7 = [
    Color(0xffDDDFE6),
    Color(0xffF4F5F9),
  ];

  static const List<List<Color>> colors = [linear1, linear2, linear3, linear4, linear5, linear6, linear7];

}
