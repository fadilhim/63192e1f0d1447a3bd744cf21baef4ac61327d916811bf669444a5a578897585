import 'package:flutter/material.dart';
import 'package:pokedex/gen/fonts.gen.dart';
import 'package:pokedex/presentation/themes/themes.dart';

class PokeTheme {
  const PokeTheme._();

  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: PokeColor.white,
        primaryColor: PokeColor.blue500,
        unselectedWidgetColor: PokeColor.black20,
        disabledColor: PokeColor.black20,
        backgroundColor: PokeColor.white,
        dialogBackgroundColor: PokeColor.white,
        fontFamily: FontFamily.poppins,
        cardTheme: const CardTheme(
          color: PokeColor.white,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.fuchsia: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: PokeColor.white,
          foregroundColor: PokeColor.black100,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: PokeTypography.headline2(color: PokeColor.black100),
        ),
        dividerTheme: const DividerThemeData(
          color: PokeColor.black20,
          thickness: 0.5,
        ),
      );
}
