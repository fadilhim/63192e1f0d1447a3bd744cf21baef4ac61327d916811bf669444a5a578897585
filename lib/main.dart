import 'package:flutter/material.dart';
import 'package:pokedex/di/inject.dart';
import 'package:pokedex/presentation/routers/router.dart';
import 'package:pokedex/presentation/themes/themes.dart';

void main() async {
  // Make sure all is initialized before we configure everything.
  WidgetsFlutterBinding.ensureInitialized();

  // Dependencies
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: inject<AppRouter>().defaultRouteParser(),
      routerDelegate: inject<AppRouter>().delegate(),
      title: 'Pokédex',
      theme: PokeTheme.lightTheme(),
    );
  }
}
