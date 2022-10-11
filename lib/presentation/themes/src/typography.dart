import 'package:flutter/material.dart';
import 'package:pokedex/gen/fonts.gen.dart';

class PokeTypography extends TextStyle {
  const PokeTypography._({
    Color? color,
    required String typeface,
    required FontWeight fontWeight,
    required double fontSize,
    required double height,
  }) : super(
          color: color,
          fontFamily: typeface,
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: height,
        );

  factory PokeTypography.headline1({Color? color}) => PokeTypography._(
        color: color,
        typeface: FontFamily.poppins,
        fontWeight: FontWeight.bold,
        fontSize: 20.25,
        height: 1.2,
      );

  factory PokeTypography.headline2({Color? color}) => PokeTypography._(
        color: color,
        typeface: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 1.2,
      );

  factory PokeTypography.body1({Color? color}) => PokeTypography._(
        color: color,
        typeface: FontFamily.poppins,
        fontWeight: FontWeight.w500,
        fontSize: 14.22,
        height: 1.4,
      );

  factory PokeTypography.body2({Color? color}) => PokeTypography._(
        color: color,
        typeface: FontFamily.poppins,
        fontWeight: FontWeight.w600,
        fontSize: 12.64,
        height: 1.2,
      );

  factory PokeTypography.label({Color? color}) => PokeTypography._(
        color: color,
        typeface: FontFamily.poppins,
        fontWeight: FontWeight.w700,
        fontSize: 10,
        height: 1.2,
      );

  factory PokeTypography.status({Color? color}) => PokeTypography._(
        color: color,
        typeface: FontFamily.poppins,
        fontWeight: FontWeight.w700,
        fontSize: 10,
        height: 1.2,
      );
}
